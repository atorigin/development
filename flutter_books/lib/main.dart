import 'dart:convert';

import 'package:http/http.dart' as http;
void main(List<String> args) async {
  // Q1
  Future.microtask(() {
    return "為了要做高效能的 APP";
  }).then((value) {
    print(value);
    return "我們必須知道異步分工合作";
  }).then((value) {
    print(value);
    return "要知道 Dart 的異步分工機制";
  }).then((value) {
    print(value);
    return "透過建立一個新函數";
  }).then((value) {
    print(value);
    return "並使用 async 與 await";
  }).then((value) {
    print(value);
    print("讓分工有順序性");
  });

  // Q2
  Uri url = Uri.parse("https://jsonplaceholder.typicode.com/users/1");
  // 取得 user 的 json object string
  var user = await http.get(url);
  // 轉換 json object string 成 map 資料結構
  Map<String,dynamic> userMap = jsonDecode(user.body);
  // 打印結果
  print(userMap["phone"]);
}