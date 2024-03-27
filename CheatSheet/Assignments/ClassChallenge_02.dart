import 'dart:io';

void main() {

/* Pizza Challenge #1
Write a loop that prompts the user to enter a series of pizza toppings until they enter a 'quit value'.
As they enter each topping, print a message saying you'll add that topping to their pizza.
 */

  bool addTopping = true;
  String addingToppings = 'I will add that topping to your pizza';

  print('Enter a pizza topping.');
  print(' ');
  String? pizzaToppings = stdin.readLineSync();
  print(addingToppings);

  do {
    print(' ');
    print(
        'Enter a pizza topping. Enter quit when you have entered all the toppings you want');
    print(' ');
    pizzaToppings = stdin.readLineSync()!;
    print(addingToppings);
  } while (pizzaToppings != 'quit'); {
    addTopping = false;
    print('Thank you');
  }

  print('----------------');
  print(' ');

// #2 Use a loop to print out each letter in the word "NTV"

  String ntv = 'NTV';

  for (int i = 0; i < ntv.length; i++) {
    print(ntv[i]);
  }

  print('-----------');
  print(' ');

/* #3 You are given a list of pizzas: [Pepperoni, Hawaiian, Cheese, Margherita]

      a) use a loop to print out each name of the pizza.
 */

  List<String> listOfPizza =
  ['Pepperoni', 'Hawaiian', 'Cheese', 'Margherita'];

  for (int i = 0; i < listOfPizza.length; i++) {
    print(listOfPizza[i]);
  }

  print('----------');
  print(' ');

// B) Modify your program to print a statement about each pizza

  for (String listOfPizza in listOfPizza) {
    print('I love eating $listOfPizza pizza');
  }

  // C) Add a line at the end of your program stating that "All pizza is great"

  print(' ');
  print('All pizza is great');

  print('---------');
  print(' ');
}

