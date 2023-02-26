void main(List<String> args) {
  List<String> nameList1 = ["王小明", "李小菜", "atorigin"];

  print("List 元素取用方式");
  print(nameList1[0]);
  print(nameList1[1]);

  print("\nfor loop 數字序列號版本");
  for(int index=0; index < nameList1.length ; index++) {
    print(nameList1[index]);
  }
  
  print("\nfor loop 元素遍歷版");
  for(String e in nameList1) {
    print(e + "送早餐給小美");
  }
}