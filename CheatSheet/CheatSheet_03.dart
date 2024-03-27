import 'dart:io';

void main () {
  // 1. Write a program to accept two integers and check whether they are equal or not.

  print('Settu inn tölu');
  String? data = stdin.readLineSync();
  int? numb1 = int.tryParse(data!);

  print('Settu inn aðra tölu');
  String? data2 = stdin.readLineSync();
  int? numb2 = int.tryParse(data2!);

  if (numb1 == numb2) {
    print('$numb1 er jafnt og $numb2');
  } else {
    print('$numb1 er ekki jafnt og $numb2');
  }


// 2. Write a program to check whether a given number is even or odd.

  if (numb1!.isEven) {
    print('Þessi tala er slétt');
  }
  if (numb1.isOdd) {
    print('Þessi tala er oddatala');
  }

// 3. Write a program to check whether a given number is positive or negative.

  if (numb1.isNegative) {
    print('this number is negative');
  } else {
    print('This number is positive');
  }
  if (numb1 == 0) {
    print('This number is zero');
  }

// 4. Write a program to find whether a given year is a leap year or not.

  print('Settu inn ár:');
  int year = int.parse(stdin.readLineSync()!);

  if ((year % 4 == 0 && year % 100 != 0) || year % 400 == 0) {
    print('$year er hlaupaár.');
  } else {
    print('$year er ekki hlaupaár');
  }

// 5. Write a program that asks the user to input 3 numbers. The program will tell the user which of the numbers are the largest.

  print('Settu inn þriggja stafa tölu');
  String? input = stdin.readLineSync();

  String num1 = input!.substring(0, 1);
  String num2 = input.substring(1, 2);
  String num3 = input.substring(2, 3);

  int number1 = int.parse(num1);
  int number2 = int.parse(num2);
  int number3 = int.parse(num3);

  int largestNumber = [number1, number2, number3].reduce((value,
      element) => value > element ? value : element);

  print('Stærsta talan er $largestNumber');

/* 6. Write a Menu-Driven Program to perform a simple calculation.
(a) Ask the users to enter two numbers
(b) Offer the user this menu, where he can select what he wants to do with those two numbers, and print out the result.
i. Addition
ii. Subtraction
iii. Multiplication iv. Division
int main() {
Age > 17 ? print('You may drive') : print('Too young to drive');
}
v. Exit
*/



  print('\nPlease insert a number');
  int? numbers1 = int.parse(stdin.readLineSync()!);

  print('\nPlease insert another number');
  int? numbers2 = int.parse(stdin.readLineSync()!);

  print('\nPlease pick one of the following');

  print(
      '\n1. Addition'
          '\n2. Subtraction'
          '\n3. Multiplication'
          '\n4. Division');

  String? val = stdin.readLineSync();

  if (val == '1') {
    print('This is your number\n${numbers1 + numbers2}');
  } else if (val == '2') {
    print('This is your number\n${numbers1 - numbers2}');
  } else if (val == '3') {
    print('This is your number\n${numbers1 * numbers2}');
  } else if (val == '4') {
    print('This is your number\n${numbers1 / numbers2}');
  } else {
    print('Invalid choice');
  }
}