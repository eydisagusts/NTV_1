import 'dart:io';

void main() {
  double totalCost = 0.0;
  List<String> orderList = [];

  Map<String, double> prices = {
    'espresso': 3.50,
    'latte': 4.00,
    'cappuccino': 4.50,
  };

  Map<String, String> drinkNames = {
    '1': 'espresso',
    '2': 'latte',
    '3': 'cappuccino',
  };

  print('Welcome to the coffee shop!');
  print(' ');
  print('Menu');
  print('1. Espresso - \$3.50');
  print('2. Latte - \$4.00');
  print('3. Cappuccino - \$4.50');
  print(' ');
  print('What would you like to order? Enter the item number or name. Enter "quit" when you are finished ordering.');

  String? customerChoice;
  do {
    customerChoice = stdin.readLineSync()?.toLowerCase();

    if (prices.containsKey(customerChoice)) {
      totalCost += prices[customerChoice]!;
      orderList.add(customerChoice!); // Add the chosen item to the order list
      print('${customerChoice.substring(0, 1).toUpperCase()}${customerChoice.substring(1)} added to your order');
    } else if (drinkNames.containsKey(customerChoice)) {
      String drinkName = drinkNames[customerChoice]!;
      totalCost += prices[drinkName]!;
      orderList.add(drinkName); // Add the chosen item to the order list
      print('${drinkName.substring(0, 1).toUpperCase()}${drinkName.substring(1)} added to your order');
    } else if (customerChoice != 'quit') {
      print("Error 404: Coffee not found! It seems we've hit a bump in the grind. Let's dust off our beans and get back on track. Choose wisely or say 'quit' to espresso yourself later!!");
    }
  } while (customerChoice != 'quit');


  print(' ');
  if (orderList.isNotEmpty) {
    print('Thank you! Here is your order:');
    print(' ');
    print(orderList.map((item) => '${item.substring(0, 1).toUpperCase()}${item.substring(1)}').join('\n'));
    print(' ');
    print('Your total is \$${totalCost.toStringAsFixed(2)}.');
  } else {
    print(' ');
    print("Hmm no orders yet? Maybe your coffee muse is still whispering its secrets. Take a moment to listen, and when inspiration strikes, we'll be here to turn your cravings into reality!");
  }

}
