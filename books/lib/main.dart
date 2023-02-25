int returnIntWithoutParameter() {
  int result = 20+1;
  return result;
}

double returnDoubleWithParameter(double inputDouble) {
  double result = inputDouble * 100 / 20;
  return result;
}

String returnStringWithParameter(String inputStr) {
  String result = inputStr + "是一個字串";
  return result;
}

void withoutReturnJustExecute() {
  print("沒有回傳資料的函數，用 void 宣告此方法的回傳值型別");
}

void main(List<String> args) {
  print("====沒有參數的函數，取值====");
  int getIntFromFunction = returnIntWithoutParameter();
  print(getIntFromFunction);

  print("====在函數動態輸入數字，取值====");
  double getDoubleFromFunctionWithParam1 = returnDoubleWithParameter(2);
  double getDoubleFromFunctionWithParam2 = returnDoubleWithParameter(5);
  print(getDoubleFromFunctionWithParam1);
  print(getDoubleFromFunctionWithParam2);

  print("====在函數動態輸入文字，取值====");
  String getStringFromFunction = returnStringWithParameter("atorigin");
  print(getStringFromFunction);

  print("====不需接收回傳值，調度函數====");
  withoutReturnJustExecute();
}