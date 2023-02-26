void main(List<String> args) {
  Map<String,String> positionMap = {
    "generalManager": "bing-hong",
    "humanResource": "xiao-tsai",
    "accounting": "xiao-mei"
  };

  // 利用 key 印出值為 bing-hong 的結果
  print(positionMap["generalManager"]);

  // 為 Map 新增一組 key-value
  positionMap["part-time"] = "xiao-black";
  print(positionMap["part-time"]);

  // 利用迴圈拿到 key 逐步打印出其對應的 value
  print("迴圈取值 use-case");
  for(String key in positionMap.keys) {
    print(positionMap[key]);
  }

  // 有時會直接將取到的其他 Map 全部加入一個 Map 裡面
  print("將新的 Map 加入原有 Map 的 use-case");
  Map<String,String> newPositionMap = {"worker": "somebody"};
  positionMap.addAll(newPositionMap);

  for(String key in positionMap.keys){
    print(positionMap[key]);
  }
}