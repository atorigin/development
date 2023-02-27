import 'dart:convert';

void main(List<String> args) {
  // Q1 宣告一個 Map 有 questionId key 其 value 為 int 型別，另一個 questionContent key 其 value 為 String
  Map<String, dynamic> questionMap = {
    "questionId": 1,
    "questionContent": "問題一，這是測試用問題內容"
  };
  print("打印 Q1 結果" + questionMap.toString());

  // Q2 將 Q1 的 Map 轉成像 json object 的字串
  String convertQ1ToString = jsonEncode(questionMap);
  print("打印 Q2 結果: " + convertQ1ToString);
  print("打印 Q2 結果在 runtime 時資料型別 " + convertQ1ToString.runtimeType.toString());

  // Q3 有一字串其內容像是 json object，將其轉成 Map<String, dynamic> 資料格式並提取 itemId 欄位
  String q3JsonObjectString = """{
    "itemId": 303031,  
    "itemName": "白米飯",   
    "itemPrice": 300  
    }""";
  Map<String,dynamic> mapFromQ3String = jsonDecode(q3JsonObjectString);
  // 因為 itemId 的 value 為 int 型別，因此要 toString()
  print("打印 Q3 結果 " + mapFromQ3String["itemId"].toString());
  
  // Q4 將一個像 json object 的字串轉成 Map 並提取 stringInJsonObject 的內容值
   String validNestedJsonObjectString = """{"jsonString": "hello", "jsonNumber": 123, "jsonArray": [1, 2, 3, 4, 5, 6], "jsonObject": {"stringInJsonObject": "abc", "numberInJsonObject": 456, "arrayInJsonObject": [7, 8, 9, 1, 2, 3], "objectInJsonObject": {"lastStringField": "cxcxc"}}}""";
   Map<String,dynamic> mapFromQ4String = jsonDecode(validNestedJsonObjectString);
   print("先打印整個 json 查看整個 json 結構 " + JsonEncoder.withIndent("    ").convert(mapFromQ4String));
   print("打印 Q4 結果 " + mapFromQ4String["jsonObject"]["stringInJsonObject"]);
}