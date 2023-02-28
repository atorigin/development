void main(List<String> args) {
  print("小美和小菜對完所有行程");
  Future.microtask(() {
    return "吃中餐";
  }).then((lastTaskEatLaunch) {
    print(lastTaskEatLaunch);
    return "訂高鐵票";
  }).then((lastTaskHighRoadway) {
    print(lastTaskHighRoadway);
    return "搭車去高鐵";
  }).then((lastTaskTakeTaxi) {
    print(lastTaskTakeTaxi);
  });

  Future.microtask(() { print("小菜寫 flutter"); });

  print("小菜與小美對完行程，小美生氣了");
}