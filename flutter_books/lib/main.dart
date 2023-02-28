void main(List<String> args) {
  print("chapter02-9-homrwork 會議開始");

  // Q1
  Future.delayed(
    Duration(seconds: 1),
    () {
      print("請老何訂購餐點");
    }
  );

  // Q2
  Future.microtask(() { print("老何定機票"); });
  
  print("chapter02-9-homework 會議結束");
}