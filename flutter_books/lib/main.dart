import 'dart:convert';

import 'package:http/http.dart' as http;

Future<Map<String,dynamic>> getRemoteSystemDataTheObject(String remoteUrl, int count) async {
  Uri url = Uri.parse(remoteUrl);
  List<dynamic> jsonArrayFromRemote = jsonDecode((await http.get(url)).body);
  Map<String, dynamic> jsonObjectFromRemote = jsonArrayFromRemote[count];
  return jsonObjectFromRemote;
}
void main(List<String> args) async {
  // Q1 https://jsonplaceholder.typicode.com/posts
  Map<String, dynamic> question1Object = await getRemoteSystemDataTheObject("https://jsonplaceholder.typicode.com/posts", 4);
  print(question1Object["id"]);
  // Q2 https://jsonplaceholder.typicode.com/comments
  Map<String, dynamic> question2Object = await getRemoteSystemDataTheObject("https://jsonplaceholder.typicode.com/comments", 4);
  print(question2Object["id"]);
  // Q3 https://jsonplaceholder.typicode.com/albums
  Map<String, dynamic> question3Object = await getRemoteSystemDataTheObject("https://jsonplaceholder.typicode.com/albums", 4);
  print(question3Object["id"]);
  // Q4 https://jsonplaceholder.typicode.com/todos
  Map<String, dynamic> question4Object = await getRemoteSystemDataTheObject("https://jsonplaceholder.typicode.com/todos", 4);
  print(question4Object["id"]);

}