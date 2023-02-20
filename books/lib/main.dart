void main(List<String> args) {
  print("練習 for");
  for(var i = 5; i >= 1 ; i--) {
    print(i);  
  }

  print("練習 forEach");
  var col = [1,2,3,4,5];
  col.forEach((element) {print(element);});

  print("練習 map , 對 collection 每一個 elem 操作");
  List<int> col2 = [5,6,7,8];
  var col2_new = col2.map((e) => e+1);
  col2_new.forEach((element) {print(element);});

  print("認識 dart 特殊符號");
  // dart 特殊符號
  // ? 代表該 var 有可能為 null
  // ! 不管該 var 是否為 null , 請依照一般情況處理

  int? maybeNull;
  int notBeNull;
  print(maybeNull);
  // print(notBeNull); // 這行在 compiler 就會出錯

  List<int>? maybeNull2;
  // maybeNull2!.forEach((element) {print(element);}); // 沒有驚嘆號 , 在 compile 時就有錯

  // 關於 ... 符號
  // 陣列合併的情形
  List list1 = ["1", "2"];
  List list2 = ["3", "4"];
  List list3 = ["5", "6"];
  var totalList = list1 + list2 + list3;
  print(totalList);
  var totalList2 = [...list1,...list2,...list3]; // ... 符號用於 List 合併
  print(totalList2);

  print("練習 dart if-else");
  int num;
  if(10>5) {
    num = 5;
  } else {
    num = 3;
  }
  print(num);

  print("單句賦值判斷式");
  //(布林條件式) ? 若為是，回傳值 : 若為否, 回傳值
  int x = 5; // 可以換成 11 看看結果有無差異
  10>x ? print(10) : print(5);

  print("練習 dart 的 function");
  // 無回傳 function
  void demoNotReturnFunc(int temp) {
    print(temp);
  }
  demoNotReturnFunc(87);

  // 有回傳 function
  int demoReturnNumberFunc(int temp) {
    return temp + 100;
  }
  print(demoReturnNumberFunc(87));

  // 另外還有匿名函式與類別的使用，因語法基本與 Java 類似，故這邊就沒特別練習
}