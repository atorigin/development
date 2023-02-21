void main(List<String> args) {
  String name = "小菜";
  String companyName = "cxcxc";
  int age = 24;

  // 各自打印
  print(name);
  print(companyName);
  print(age.toString());

  // 組合打印
  print("在" + companyName + "有一個員工 , 名字叫做" + name + "他今年" + age.toString() + "歲");
}