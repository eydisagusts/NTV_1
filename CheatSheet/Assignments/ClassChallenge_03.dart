import 'dart:io';

void main() {
  /* Challenge 1:
  Try writing a code using a while loop which counts down the one, and then print "Happy New Year".
  Use a while loop.
   */

  int currentNumber = 10;
  while (currentNumber >= 1) {
    print(currentNumber);
    currentNumber--;
  }

  print('Happy New Year!');

  print('---------------------------');

  /*
  Another Challenge: Write a program that prints:
  "Tell me a statement to repeat back to you. Enter 'quit' to end the program"
  If the user types in anything except 'quit' - print out to the screen what he entered and then repeat the process.
  If he types in 'quit' - the program ends.
  */


  print('Tell me a statement to repeat back to you. Enter quit to end the program');
  String? statement = stdin.readLineSync();

  if(statement != 'quit')
  {
    print(statement);

  }      else
  {
    print('Canceling Program');
  }

  print('-----------------');

  // Another way:

  print(
      'Tell me a statement to repeat back to you. Enter quit to end the program');
  String? statement2 = stdin.readLineSync();

  bool printed = false;

  do {
    if (statement2 == 'quit') {
      print('Canceling program');
    } else {
      print(statement2);
      printed = true;
    }
  } while (statement2 != 'quit' && !printed);

  print('----------------------');


  // Assignment 2: Way 3.

  bool active = true;

  print('Tell me a statement to repeat back to you. Enter quit to end the program.');
  String? input = stdin.readLineSync();

  while(active) {


    if (input == 'quit') {
      print('Canceling the program');
      active = false;
    } else {
      print(input);
      active = false;
    }
  }
  print('----------------------');


  // The for loop:


  List<String> friends =
  ['Rachel', 'Monica', 'Chandler', 'Pheope', 'Joey', 'Ross'];

  for (int i = 0; i < friends.length; i++) {
    print(friends[i]);
  }

  print('-------------------');

  // Prófa að láta friends koma í random röð

  print('Here is the list of friends in random order');
  print(' ');

  friends.shuffle();

  for (int i = 0; i < friends.length; i++) {
    print(friends[i]);
  }

  print('----------------');

  List<String> newGirl =
  ['Jess', 'Schmidt', 'Nick Miller', 'Winston', 'Coach', 'Cece'];

  for(String newGirl in newGirl) {
    print(newGirl);
  }

  print('------------------');

  /* Challenge!
  Write similar code for the sodas collection.
  Print "This is my favourite soda" + sodaname.
  Try using it first by using a for-loop, and then a for-in loop.
   */

  List<String> soda =
  ['Pepsi', 'Pepsi Max', 'Coca Cola', 'Coca Cola Zero'];

  print('This is my favourite soda');
  print(' ');

  for (int i = 0; i < soda.length; i++)
  {
    print(soda[i]);
  }

  print('-----------------');

  print('This is my favourite soda');
  print(' ');
  for(String soda in soda) {
    print(soda);
  }

  print('----------------');


  // Pizza Challenge #1

  print(
      'Enter a pizza topping. Enter quit when you have entered all the toppings you want');
  print(' ');
  String? pizzaToppings = stdin.readLineSync();

  do {
    print(
        'Enter a pizza topping. Enter quit when you have entered all the toppings you want');
    print(' ');
    pizzaToppings = stdin.readLineSync()!;
  } while (pizzaToppings != 'quit');

  print('----------------');
  print(' ');

  // #2

  String ntv = 'NTV';

  for (int i = 0; i < ntv.length; i++) {
    print(ntv[i]);
  }

  print('-----------');
  print(' ');

  // #3

  List<String> listOfPizza =
  ['Pepperoni', 'Hawaiian', 'Cheese', 'Margherita'];

  for (int i = 0; i < listOfPizza.length; i++) {
    print(listOfPizza[i]);
  }

  print('----------');
  print(' ');

  // Modify your program to print a statement about each pizza

  for (String pizza in listOfPizza) {
    print('I love eating $pizza pizza');
  }

  print(' ');
  print('All pizza is great');

  print('---------');
  print(' ');
}
