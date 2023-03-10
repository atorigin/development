// 建立一個 User Class
// 其特型為，一個 id 編號，姓名，一個帳號用戶名，一個 email
// 該類別有 fromJson 建構子，有 toJson 方法，還有一個 printUserInfo 用來打印該用戶相關訊息

import 'dart:convert';

class User {
  int id;
  String name;
  String username;
  String email;

  // 第一建構子
  User(this.id, this.name, this.username, this.email);

  // 第二建構子
  factory User.fromJson(dynamic userJson) {
    int userId = userJson["id"];
    String name = userJson["name"];
    String username = userJson["username"];
    String email = userJson["email"];
    return User(userId, name, username, email);
  }

  void printUserInfo() {
    print("用戶叫做 $name, 用戶的帳號為 $username, 用戶的id是 $id, 用戶的信箱為 $email");
  }

  String toJson() {
    dynamic instanceMap = {"id": id, "name": name, "username": username, "email": email};
    return jsonEncode(instanceMap);
  }
}

void main(List<String> args) {
  print("=====Section1=====");
  // 生成一個 User 物件
  User demoUser = User(1, "atorigin", "at-origin", 'atorigin@example.com');
  print("demoUser id = ${demoUser.id}");
  print("demoUser name = ${demoUser.name}");
  print("demoUser username = ${demoUser.username}");
  print("demoUser email = ${demoUser.email}");
  demoUser.printUserInfo();
  print("toJson 結果為: " + demoUser.toJson());

  print("=====Section2=====");
  // 透過 String 轉換成 User 物件
  String userJsonString = """{"id": 2, "name": "小菜", "username": "xiao-tsai", "email": "xiao-tsai@example.com"}""";
  // 需要先透過 jsonDecode 將其轉成對應的資料結構，否則將出錯（當然字串也必須符合 json object 結構）
  dynamic userJsonStringToDynamic = jsonDecode(userJsonString);
  User demoUser2 = User.fromJson(userJsonStringToDynamic);
  print("demoUser2 id = ${demoUser2.id}");
  print("demoUser2 name = ${demoUser.name}");
  print("demoUser2 username = ${demoUser2.username}");
  print("demoUser2 email = ${demoUser2.email}");
  demoUser2.printUserInfo();

  print("=====Section3=====");
  // 透過用戶物件轉換成 String，再利用 String 將其轉回 User 物件
  String demoUser3 = demoUser.toJson();
  print(demoUser3);
  dynamic user3StringToDynamic = jsonDecode(demoUser3);
  User demoUser4 = User.fromJson(user3StringToDynamic);
  print(demoUser4.id);
  print(demoUser4.name);
  print(demoUser4.username);
  print(demoUser4.email);
  demoUser4.printUserInfo();
}