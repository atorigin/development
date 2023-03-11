import 'dart:convert';
import 'package:http/http.dart' as http;

class Post {
  int id;
  String title;
  String body;

  Post(this.id, this.title, this.body);

  factory Post.fromJson(dynamic postJson) {
    int id = postJson["id"];
    String title = postJson["title"];
    String body = postJson["body"];
    return Post(id, title, body);
  }

  String toJson() {
    dynamic instance = {"id": id, "title": title, "body": body};
    return jsonEncode(instance);
  }
}

class Comment {
  int id;
  String name;
  String email;

  Comment(this.id, this.name, this.email);

  factory Comment.fromJson(dynamic commentJson) {
    int id = commentJson["id"];
    String name = commentJson["name"];
    String email = commentJson["email"];
    return Comment(id, name, email);
  }

  String toJson() {
    dynamic instance = {"id": id, "name": name, "email": email};
    return jsonEncode(instance);
  }
}

class Album {
  int userId;
  int id;
  String title;

  Album(this.userId, this.id, this.title);

  factory Album.fromJson(dynamic albumJson) {
    int userId = albumJson["userId"];
    int id = albumJson["id"];
    String title = albumJson["title"];
    return Album(userId, id, title);
  }

  String toJson() {
    dynamic instance = {"userId": userId, "id": id, "title": title};
    return jsonEncode(instance);
  }
}

class Todo {
  int id;
  String title;
  bool completed;

  Todo(this.id, this.title, this.completed);

  factory Todo.fromJson(dynamic todoJson) {
    int id = todoJson["id"];
    String title = todoJson["title"];
    bool completed = todoJson["completed"];
    return Todo(id, title, completed);
  }

  String toJson() {
    dynamic instance = {"id": id, "title": title, "completed": completed};
    return jsonEncode(instance);
  }
}

void main(List<String> args) async {
  // 宣告 Q1 ~ Q4 Url 物件
  Uri url01 = Uri.parse("https://jsonplaceholder.typicode.com/posts");
  Uri url02 = Uri.parse("https://jsonplaceholder.typicode.com/comments");
  Uri url03 = Uri.parse("https://jsonplaceholder.typicode.com/albums");
  Uri url04 = Uri.parse("https://jsonplaceholder.typicode.com/todos");
  
  // 取得四個遠端系統的 Item List 轉成對應的物件 List
  List<dynamic> postArrayResponses = jsonDecode((await http.get(url01)).body);
  List<Post> postArray = postArrayResponses.map((e) => Post.fromJson(e)).toList();
  
  List<dynamic> commentArrayResponses = jsonDecode((await http.get(url02)).body);
  List<Comment> commentArray = commentArrayResponses.map((e) => Comment.fromJson(e)).toList();

  List<dynamic> albumArrayResponses = jsonDecode((await http.get(url03)).body);
  List<Album> albumArray = albumArrayResponses.map((e) => Album.fromJson(e)).toList();

  List<dynamic> todoArrayResposnes = jsonDecode((await http.get(url04)).body);
  List<Todo> todoArray = todoArrayResposnes.map((e) => Todo.fromJson(e)).toList();

  // 都取第五個 item 作為 post data 送到 remote system
  http.Response postResponse1 = await http.post(url01, body: postArray[4].toJson());
  print("第一個 Response = ${postResponse1.body}");
  http.Response postResponse2 = await http.post(url02, body: commentArray[4].toJson());
  print("第二個 Response = ${postResponse2.body}");
  http.Response postResponse3 = await http.post(url03, body: albumArray[4].toJson());
  print("第三個 Response = ${postResponse3.body}");
  http.Response postResponse4 = await http.post(url04, body: todoArray[4].toJson());
  print("第四個 Response = ${postResponse4.body}");

}