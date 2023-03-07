import 'dart:convert';

import 'package:http/http.dart' as http;
// 寫一個 getRemoteSystemData 的 function
Future<List<dynamic>> getRemoteSystemData(String remoteUrl) async {
  Uri url = Uri.parse(remoteUrl);
  http.Response multipleResponse = await http.get(url);
  List<dynamic> jsonArrayFromRemote = jsonDecode(multipleResponse.body);
  return jsonArrayFromRemote;
}

// 寫一個 getRemoteSystemDataWithoutAsync
Future<List<dynamic>> getRemoteSystemDataWithoutAsync(String remoteUrl) {
  Uri url = Uri.parse(remoteUrl);
  Future<http.Response> multipleResponseWithFuture = http.get(url);
  Future<List<dynamic>> jsonArrayFromRemoteWithFuture = multipleResponseWithFuture.then((responses) => jsonDecode(responses.body));
  return jsonArrayFromRemoteWithFuture;
}

// main 方法，使用 getRemoteSystemData 的 function 和 getRemoteSystemDataWithoutAsync 的 function 各操作一次
void main(List<String> args) async {
  // 利用第一個 Function 取得資料並抓取對應欄位
  // 要調用 await 的話 , 該 function 必定要是一個 async function , 因此 main 需宣告為 async
  List<dynamic> f1 = await getRemoteSystemData("https://jsonplaceholder.typicode.com/users");
  print(JsonEncoder.withIndent("    ").convert(f1[0]));
  print(f1[0]["username"]);
  print(f1[0]["email"]);
  // 如何避免 null
  print(f1[0]["family"]);

  print("==========分隔線==========");

  // 同上，但用第二個 Function 展示
  List<dynamic> f2 = await getRemoteSystemDataWithoutAsync("https://jsonplaceholder.typicode.com/users");
  print(JsonEncoder.withIndent("    ").convert(f2[0]));
  print(f2[0]["username"]);
  print(f2[0]["email"]);
  // 同上 , 如何避免 null
  print(f2[0]["family"]);
}