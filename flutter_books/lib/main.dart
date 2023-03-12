abstract class Animal {
  String name;

  Animal(this.name);

  void echo() {}
}

class Dog extends Animal {
  Dog(String name) : super(name);

  @override
  void echo() {
    print("汪!");
  }
}

class Cat extends Animal {
  Cat(String name) : super(name);

  @override
  void echo() {
    print("喵~");
  }
}

abstract class Human {
  String name;
  
  Human(this.name);

  void echo() {}
}

class Asian extends Human {
  Asian(String name) : super(name);

  @override
  void echo() {
    print("你好~");
  }
}

class European extends Human {
  European(String name) : super(name);

  @override
  void echo() {
    print("Hello!");
  }
}

void main(List<String> args) {
  Animal blackCat = Cat("小黑");
  Animal whiteDog = Dog("小柴");

  blackCat.echo();
  whiteDog.echo();

  Human xiaoTsai = Asian("小菜");
  xiaoTsai.echo();
  Human teddy = European("泰迪");
  teddy.echo();
}