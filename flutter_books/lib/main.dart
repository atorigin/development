import 'dart:convert';

class Cat {
  String variety;
  int weight;

  Cat(this.variety, this.weight);

  factory Cat.fromJson(dynamic catJson) {
    String variety = catJson["variety"];
    int weight = catJson["weight"];
    return Cat(variety, weight);
  }

  void echo() {
    print("喵");
  }

  String toJson() {
    dynamic instance = {"variety": variety, "weight": weight};
    return jsonEncode(instance);
  }
}

class Dog {
  String variety;
  int weight;
  
  Dog(this.variety, this.weight);

  factory Dog.fromJson(dynamic dogJson) {
    String variety = dogJson["variety"];
    int weight = dogJson["weight"];
    return Dog(variety, weight);
  }

  void echo() {
    print("汪");
  }

  String toJson() {
    dynamic instance = {"variety": variety, "weight": weight};
    return jsonEncode(instance);
  }
}

class Human {
  String variety;
  int weight;

  Human(this.variety, this.weight);

  factory Human.fromJson(dynamic humanJson) {
    String variety = humanJson["variety"];
    int weight = humanJson["weight"];
    return Human(variety, weight);
  }

  void echo() {
    print("Hello");
  }

  String toJson() {
    dynamic instance = {"variety": variety, "weight": weight};
    return jsonEncode(instance);
  }
}

void main(List<String> args) {
  // 生成 Cat 物件
  Cat myCat = Cat("加菲貓", 30);
  myCat.echo();
  print(myCat.toJson());

  // 生成 Dog 物件
  Dog myDog = Dog("柴犬", 28);
  myDog.echo();
  print(myDog.toJson());

  // 生成 Human 物件
  Human me = Human("男性", 70);
  me.echo();
  print(me.toJson());

  String anotherCat = """{"variety": "黑貓", "weight": 15}""";
  Cat cat2 = Cat.fromJson(jsonDecode(anotherCat));
  cat2.echo();
  print(cat2.toJson().runtimeType);
}