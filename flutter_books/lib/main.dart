import 'dart:convert';

void main(List<String> args) {
  // 以 dart 形式定義類似 json object 那樣的資料結構
  Map<String,dynamic> dynamicMap = {
    "name": "xiao-mei",
    "age": 18
  };
  print("打印 key 為 name 對應的 value 在 runtime 時的資料型別 = " + dynamicMap["name"].runtimeType.toString());
  print("打印 key 為 age 對應的 value 在 runtime 時的資料型別 = " + dynamicMap["age"].runtimeType.toString());

  // 將符合 json object 資料形式的字串轉換成 dart Map 結構
  String stringLikeJsonObject = """{"name": "小明", "age": 28}""";
  Map<String,dynamic> stringJsonObjectConvertToMap = jsonDecode(stringLikeJsonObject);
  print("打印 key 為 name 的結果: " + stringJsonObjectConvertToMap["name"]);
  print("打印 key 為 age 的結果: " + stringJsonObjectConvertToMap["age"].toString());
  
  // 將剛剛從字串轉換成 Map 的結果在加上一組 key-value 而後再轉換成 String
  stringJsonObjectConvertToMap["sex"] = "male";
  String newStringLikeJsonObject = jsonEncode(stringJsonObjectConvertToMap);
  print("打印轉換成功的 json object 字串 " + newStringLikeJsonObject);

  print("打印轉換成功的 json object 字串 runtime 的型別 " + newStringLikeJsonObject.runtimeType.toString());
}