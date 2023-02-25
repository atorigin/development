void main(List<String> args) {
  print("情境一：若現場人數超過50，則老王女友嫁給老王，否則就一起去吃東西\n");

  int peopleAmount = 51;
  if(peopleAmount > 50) {
    print("老王女友答應嫁給老王");
  } else {
    print("老王女友和老王一起去吃東西");
  }

  print("\n情境二：雖然現場人數超過50人，但老王女友說出父母的顧慮，要求老王存款若大於三萬則立刻嫁，若小於三萬且大於一萬，則勉強可以，若小於一萬則鼓勵老王在努力工作存錢\n");

  int budget = 30000;
  if(budget >= 30000) {
    print("老王女友決定馬上嫁給老王");
  } else if(budget > 10000) {
    print("老王女友思考了一下，認為可以勉強嫁給老王");
  } else {
    print("老王女友向老王說，我們還年輕，可以先努力存點錢再來打算");
  }

  print("\n情境三：小菜女友小美說「如果嫁的對象是小菜，我才嫁。否則我終身都不結婚」\n");
  String husbandName = "小菜";
  if(husbandName != "小菜"){
    print("我終身不嫁");
  } else {
    print("結婚吧");
  }
}