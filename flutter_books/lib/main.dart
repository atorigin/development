// 建立一個抽象類別 Drinking
// 建立一個 Coffee 類別繼承 Drinking
// 建立一個 Tea 類別繼承 Drinking
// 個別實現 Drinking 抽象類別的未實作 method


abstract class Drinking {
  // 產地
  String origin;
  // 品牌推廣
  String branding;
  // 價格
  int price;

  Drinking(this.origin, this.branding, this.price);

  // 第一個 method - 產品須知
  void mustKnow() {
    print("產品若有瑕疵，可聯絡消基會");
  }

  // 第二個 method - 產品說明 (未真正 implement)
  void drinkingInstruction() {}
}

class Coffee extends Drinking {
  Coffee(String origin, String branding, int price) : super(origin, branding, price);

  @override
  void drinkingInstruction() {
    print("半夜後不要喝咖啡，避免無法入睡");
  }
}

class Tea extends Drinking {
  Tea(String origin, String branding, int price) : super(origin, branding, price);
  
  @override
  void mustKnow() {
    print("喝好茶，醒神延年益壽");
  }

  @override
  void drinkingInstruction() {
    print("可熱沖或冷泡");
  }
}

void main(List<String> args) {
  Drinking myCoffee = Coffee("America", "StarBucks", 130);
  print(myCoffee.branding);
  myCoffee.drinkingInstruction();
  myCoffee.mustKnow();

  Drinking myTea = Tea("Taiwan", "wulong", 90);
  print(myTea.branding);
  myTea.drinkingInstruction();
  myTea.mustKnow();
}