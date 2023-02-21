void main(List<String> args) {
  // Q1
  String jobInfo = "全端工程師";
  // Q2
  String description = "會寫個用戶看的，也會接觸資料庫的";
  // Q3
  int salary = 35000;
  // Q4
  print("有一個職缺是：" + jobInfo + "負責處理" + description + "。目前該職缺的薪水為" + salary.toString());
  print(description + jobInfo + "。他的薪水是：" + salary.toString());

  // Q5
  Item aBook = Item();
  aBook.description();
}

// Q5 物件
class Item {
  String name = "大話AWS雲端架構";
  int weight = 140;

  Item();

  void description() {
    print("這個物品名稱是：" + this.name + "。重量為：" + this.weight.toString());
  }
}