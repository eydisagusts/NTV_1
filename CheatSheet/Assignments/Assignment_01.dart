import 'dart:io';

void main () {

  // 1.Prints Hello and your name in a separate line.

  print('Whats your name?');
  String? name = stdin.readLineSync();

  print('Hello \n$name');

  // 2.Prints the sum of two numbers

  print('Please enter a number');
  String? numb1 = stdin.readLineSync();

  print('Please enter a number to add to $numb1');
  String? numb2 = stdin.readLineSync();

  int number1 = int.parse(numb1!);
  int number2 = int.parse(numb2!);

  int sum = number1 + number2;
  print('Your number is $sum');

// 3.Prints the result of dividing two numbers

  print('Please enter a number');
  String? num1 = stdin.readLineSync();

  print('Please enter another number to divide $num1');
  String? num2 = stdin.readLineSync();

  int number3 = int.parse(num1!);
  int number4 = int.parse(num2!);

  double summary = number3 / number4;
  print('Your number is $summary');

  // 4.Prints the result of the specified operation

  // 1. -1 + 5 * 5
  //▪Expected Output: 24

  // Leið 1

  print('Operation 1');

  int operation1 = -1 + (5 * 5);
  print(operation1);

  // Leið 2

  print('Operation 1.2');

  int n1 = -1;
  int n2 = 5;

  int operation1_2sum = n1 + (n2 * n2);
  print(operation1_2sum);

  // 2. (25 + 5) % 4
  //▪Expected Output: 2

// Leið 1

  print('operation2');
  int operation2 = (25 + 5) %4;
  print(operation2);

  // Leið 2

  int n3 = 25;
  int n4 = 4;

  print('Operation 2.1');
  int operation2_1sum = (n3 + n2) % n4;
  print(operation2_1sum);

  //  3. 8 + 6 * 4 / 2
  // ▪Expected Output: 20

  // Leið 1

  print('Operation 3');
  double operation3 = 8 + (6 * 4) / 2;
  print(operation3);

  // Leið 2

  print('Operation 3.1');

  int n5 = 8;
  int n6 = 6;
  int n7 = 2;

  double operation3_1sum = n5 + (n6 * n4) / n7;
  print(operation3_1sum);

  //  4. 2 + 15 / 6 * 1 - 7 % 2
  // ▪Expected Output: 3.5

  // Leið 1

  print('Operation 4');

  double operation4 = 2 + 15 / (6 * 1) -7 % 2;
  print(operation4);

  // Leið 2

  print('Operation 4.1');

  int n8 = 15;
  int n9 = 1;
  int n10 = 7;

  double operation4_1sum = n7 + n8 / (n6 * n9) - n10 % 2;
  print(operation4_1sum);
}
