import 'dart:convert';
import 'package:http/http.dart' as http;

// 建立一個 User class 其特徵為遠端系統類似之特徵 https://jsonplaceholder.typicode.com/users
class User {
  int id;
  String name;
  String username;
  String email;

  User(this.id, this.name, this.username, this.email);

  factory User.fromJson(dynamic userJson) {
    int id = userJson["id"];
    String name = userJson["name"];
    String username = userJson["username"];
    String email = userJson["email"];
    return User(id , name , username, email);
  }

  void printUserInfo() {
    print("有一個用戶 $name , 他的使用者帳號為 $username , 用戶 id 是 $id, 信箱為 $email");
  }

  // 這邊其實可以宣告為 Map<String, dynamic> 更符合 toJson 格式，不過在 post data 到遠端時也是要多做一層 jsonEncode
  String toJson() {
    dynamic instance = {"id": id, "name": name, "username": username, "email": email};
    return jsonEncode(instance);
  }
}

// 建立一個 function 取得遠端系統的 User 物件陣列
Future<List<User>> getRemoteSystemUserData() async {
  Uri multipleItemUrl = Uri.parse("https://jsonplaceholder.typicode.com/users");
  http.Response remoteSystemResponses = await http.get(multipleItemUrl);
  List<dynamic> jsonArrayFromRemote = jsonDecode(remoteSystemResponses.body);
  // important: 轉成 User 物件的 Array
  List<User> userArray = jsonArrayFromRemote.map((dynamicUserJson) => User.fromJson(dynamicUserJson)).toList();
  return userArray;
}

// main 方法，將 user 物件轉換並 post 到遠端系統，將 post 回傳的 response 結果打印
void main(List<String> args) async {
  List<User> userArrayFromRemote = await getRemoteSystemUserData();
  print("=====打印 User 陣列第一個元素的信息=====");
  print(userArrayFromRemote[0].toJson());
  
  Uri url = Uri.parse("https://jsonplaceholder.typicode.com/users");
  String postData = userArrayFromRemote[0].toJson();
  http.Response postResponse = await http.post(url, body: postData);
  print(postResponse.body);
}