String iAmStringFunction(String inputString) {
  String result = "atorigin : " + inputString;
  return result;
}

int iAmIntFunction(int inputInt) {
  int result = inputInt * 20;
  return result;
}

void iAmNotReturnValue(){
  print("通常會用於與資料庫、硬碟等外部系統接觸的情境");
}

void main(List<String> args) {
  print("展示 iAmStringFunction");
  String getValueFromiAmStringFunction = iAmStringFunction("練習寫 code!");
  print(getValueFromiAmStringFunction);

  print("展示 iAmIntFunction");
  int getValueFromiAmIntFunction = iAmIntFunction(300);
  print(getValueFromiAmIntFunction);

  print("展示 iAmNotReturnValue");
  iAmNotReturnValue();
}

