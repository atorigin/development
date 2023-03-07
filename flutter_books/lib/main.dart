class Cat {
  String variety;
  int weight;

  // constructor
  Cat(this.variety, this.weight);

  void echo() {
    print("喵");
  }
}

class Dog {
  String variety;
  int weight;
  
  // constructor
  Dog(this.variety, this.weight);
  
  void echo() {
    print("汪");
  }
}

class Human {
  String variety;
  int weight;

  // constructor
  Human(this.variety, this.weight);

  void echo() {
    print("Hi");
  }
}

class Rabbit {
  String variety;
  int weight;

  // constructor
  Rabbit(this.variety, this.weight);

  void echo() {
    print("咕咕");
  }

  void score() {
    if(this.weight > 20) {
      print("胖");
    }
    else if(this.weight <= 20) {
      print("普通");
    }
  }
}