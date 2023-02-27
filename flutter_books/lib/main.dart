import 'dart:convert';

import 'package:http/http.dart' as http;
void main(List<String> args) async {
  // 取得單一 jsonObject 案例
  Uri uri = Uri.parse("https://jsonplaceholder.typicode.com/users/1");
  var response = await http.get(uri);
  print(response.body);
  
  Map<String,dynamic> responseMap = jsonDecode(response.body);
  print(responseMap);
  
  print("取出 jsonObject 裡面的 key-value");
  print(responseMap["phone"]);

  // 取得 jsonArray 案例
  Uri uri2 = Uri.parse("https://jsonplaceholder.typicode.com/users");
  var response2 = await http.get(uri2);
  List<dynamic> response2List = jsonDecode(response2.body);
  print(response2List[2]);

  // POST 資料到遠端 Server 案例 , 常用於 backend API Service 互動的場景
  Uri uri3 = Uri.parse("https://jsonplaceholder.typicode.com/posts");
  String jsonObjectPostBody = """{"name": "atorigin" , "title": "begineer" , "body": "coding is live"}""";
  var response3 = await http.post(uri3, body: jsonObjectPostBody);
  print(response3.body);
}