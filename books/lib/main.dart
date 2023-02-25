void nameIsEqualAtorigin(String name) {
  if(name == "atorigin") {
    print("coding is live\n");
  } else {
    print("coding is live also is part of work\n");
  }
}
void isMiddleClassFamily(int salary) {
  double halfSalary = salary / 2;
  double remainingSalary = halfSalary - 10000 - 5000;
  if(remainingSalary > 30000) {
    print("ya! middle-class family");
  } else {
    print("working-class family , I still go on to coding ~\n");
  }
}

void isCompanyWorthToInvesting(int revenue) {
  int staff = 5;
  // 定義公司營業稅
  double businessTax = revenue * 0.05;
  print("businessTax : " + businessTax.toString());
  // 雜項支出 = 公司基礎雜項支出 + 員工人數*每人每年雜支 + 員工人數*每人每年勞健保費用 + 員工人數*每人每年薪水
  double miscellaneousExpenses = 2000000 + (5 * 12000) + (5 * 10000) + (5 * 40000 * 12);
  print("miscellaneousExpenses : " + miscellaneousExpenses.toString());
  // 定義公司營所稅
  double incomeTax = (revenue - businessTax - miscellaneousExpenses) * 0.2;
  print("incomeTax : " + incomeTax.toString());
  // 計算公司總營業所得(盈餘)
  double surplus = revenue - businessTax - miscellaneousExpenses - incomeTax;
  print("surplus : " + surplus.toString());
  // 計算股票淨值
  double stockValue = (revenue - businessTax - miscellaneousExpenses - incomeTax) / 1000000;
  print("stockValue : " + stockValue.toString());

  // 判斷股票淨值大於 5 ; 介於 2~5 ; 小於 2
  if(stockValue > 5) {
    print("好投資標的");
  } else if(stockValue > 2) {
    print("可投資標的");
  } else {
    print("建議看其他家");
  }
}

void main(List<String> args) {
  print("情境一：判斷字串是否為 atorigin , 打印出不同訊息");

  nameIsEqualAtorigin("atorigin");

  print("情境二： 判斷是否為小康家庭");

  isMiddleClassFamily(60000);

  print("情境三： 計算股票投資標的 , 公司預定營收為500萬");

  isCompanyWorthToInvesting(5000000);
}