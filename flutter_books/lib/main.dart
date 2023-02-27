import 'dart:convert';

void main(List<String> args) {
  // Q1
  print("Q1 提取出  arrayInJsonObject 的值");
  String validNestedJsonObjectString = """{"jsonString": "hello", "jsonNumber": 123, "jsonArray": [1, 2, 3, 4, 5, 6], "jsonObject": {"stringInJsonObject": "abc", "numberInJsonObject": 456, "arrayInJsonObject": [7, 8, 9, 1, 2, 3], "objectInJsonObject": {"lastStringField": "cxcxc"}}}""";
  print("先轉換成 JsonObject 利用 indent 查看整體結構");
  Map<String,dynamic> mapFromValidNestedJsonObjectString = jsonDecode(validNestedJsonObjectString);
  print(JsonEncoder.withIndent("    ").convert(mapFromValidNestedJsonObjectString));
  // 取得結構如下
  // {
  //   "jsonString": "hello",
  //   "jsonNumber": 123,
  //   "jsonArray": [
  //       1,
  //       2,
  //       3,
  //       4,
  //       5,
  //       6
  //   ],
  //   "jsonObject": {
  //       "stringInJsonObject": "abc",
  //       "numberInJsonObject": 456,
  //       "arrayInJsonObject": [
  //           7,
  //           8,
  //           9,
  //           1,
  //           2,
  //           3
  //       ],
  //       "objectInJsonObject": {
  //           "lastStringField": "cxcxc"
  //       }
  //   }
  // }
  print("打印 Q1 結果\n");
  print(mapFromValidNestedJsonObjectString["jsonObject"]["arrayInJsonObject"]);
}
