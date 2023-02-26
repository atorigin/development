import 'dart:io';

void main(List<String> args) {
  // Q1
  List<int> numList = [3,5,6,1,2];
  int answer = 0;

  // Q2
  for(int i=0; i < numList.length ; i++) { 
    answer += numList[i];
  }
  print("Q2 Answer = " + answer.toString());

  // Q3
  answer = 0; // reset
  for (int e in numList) {
    answer += e;
  }

  print("Q3 Answer = " + answer.toString());

  //Q4
  for(int i = 1; i < 5 ; i++){
    print("*" * i);
  }

  //Q5
  for(int x = 1 ; x < 10 ; x++){
    for(int y = 1 ; y < 10 ; y++) {
      stdout.write(x.toString() + "*" + y.toString() + "=" + (x * y).toString() + "\t");
    }
    print("");
  }
}