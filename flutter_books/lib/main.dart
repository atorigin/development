import 'dart:convert';

void main(List<String> args) {
  print("範例一");
  String stringOfJsonArray = """[1,2,3,4,5,6]""";
  List<dynamic> listFromStringOfJsonArray = jsonDecode(stringOfJsonArray);
  print(listFromStringOfJsonArray);

  print("\n範例二");
  listFromStringOfJsonArray.add(7);
  String newStringOfJsonArray = jsonEncode(listFromStringOfJsonArray);
  print(newStringOfJsonArray);

  print("\n範例三");
  String stringJsonArrayOfJsonObject = """[{"name": "atorigin" , "age": 18}, {"name": "小菜" , "age": 25}, {"name": "小美", "age": 21}]""";
  List<dynamic> listFromJsonArrayOfJsonObject = jsonDecode(stringJsonArrayOfJsonObject);
  print(listFromJsonArrayOfJsonObject[0]["name"]);

  print("\n範例四，以迴圈方式將 Json Object 轉換成 Map");
  for(Map<String,dynamic> jsonObject in listFromJsonArrayOfJsonObject) {
    print(jsonObject);
  }

  print("\n範例五，新增一個 Map 到陣列裡");
  Map<String,dynamic> fifthSampleMap = {"name": "bob", "age": 40};
  listFromJsonArrayOfJsonObject.add(fifthSampleMap);
  for(Map<String,dynamic> jsonObject in listFromJsonArrayOfJsonObject) {
    print(jsonObject);
  }
}