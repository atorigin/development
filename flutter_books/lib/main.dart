void main(List<String> args) {
  print("小美與小菜準備對行程");

  xiaoMeiSchedule();

  Future.microtask(() {
    print("小菜練習 Flutter");
  });

  print("小美與小菜對完行程，小美生氣了");
}

void xiaoMeiSchedule() async {
  String lastTask = await Future.microtask(() {
    return "小美吃中餐";
  });

  if(lastTask == "小美吃中餐") {
    print(lastTask);
    lastTask = "小美訂高鐵票"; 
  }

  if(lastTask == "小美訂高鐵票") {
    print(lastTask);
    lastTask = "小美搭車去高鐵";
  }

  print(lastTask);
}