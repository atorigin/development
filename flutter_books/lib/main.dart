import 'dart:convert';

import 'package:http/http.dart' as http;
void main(List<String> args) async {
  Uri url1 = Uri.parse("https://jsonplaceholder.typicode.com/posts");
  Uri url2 = Uri.parse("https://jsonplaceholder.typicode.com/comments");
  Uri url3 = Uri.parse("https://jsonplaceholder.typicode.com/albums");
  Uri url4 = Uri.parse("https://jsonplaceholder.typicode.com/todos");

  // Q1
  print("Q1 回傳的結果 , 取第五個對其 post 拿回結果取出 id");
  var res1 = await http.get(url1);
  var res1PostResult = await http.post(url1, body: jsonEncode(jsonDecode(res1.body)[4]));
  print(jsonDecode(res1PostResult.body)["id"]);

  print("\nQ2 回傳的結果 , 取第五個對其 post 拿回結果取出 id");
  var res2 = await http.get(url2);
  var res2PostResult = await http.post(url2, body: jsonEncode(jsonDecode(res2.body)[4]));
  print(jsonDecode(res2PostResult.body)["id"]);

  print("\nQ3 回傳的結果 , 取第五個對其 post 拿回結果取出 id");
  var res3 = await http.get(url3);
  var res3PostResult = await http.post(url3, body: jsonEncode(jsonDecode(res3.body))[4]);
  print(jsonDecode(res3PostResult.body)["id"]);

  print("\nQ4 回傳的結果 , 取第五個對其 post 拿回結果取出 id");
  var res4 = await http.get(url4);
  var res4PostResult = await http.post(url4 , body: jsonEncode(jsonDecode(res4.body))[4]);
  print(jsonDecode(res4PostResult.body)["id"]);


}