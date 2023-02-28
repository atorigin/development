import 'dart:convert';

import 'package:http/http.dart' as http;
void main(List<String> args) {
  // Q1
  Future.microtask(
    () => "為了要做高效能的App").then(
      (value) {
        print(value);
        return "我們必須知道異步分工合作";
      }).then((value){
        print(value);
        return "要知道 Dart 的異步分工機制";
      }).then((value) {
        print(value);
        return "可以使用 Future";
      }).then((value) {
        print(value);
        return "並透過 then 方法";
      }).then((value) {
        print(value);
        return "讓分工有順序性";
      }).then((value) {
        print(value); 
      });

  // Q2
  Uri url = Uri.parse("https://jsonplaceholder.typicode.com/users/1");
  Future.microtask(
    () {
      return http.get(url);
    }).then((value) {
      print("取出 json object 的 string 轉換成 map");
      return jsonDecode(value.body);
    }).then((value) {
      print("利用 Map 資料結構特性，取出 key 為 phone 的 value 並打印");
      print(value["phone"]);
    });

}