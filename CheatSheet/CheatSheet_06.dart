void main() {

  List<String> names = ['Brynja', 'Áslaug', 'Ásdís', 'Greta', 'Hekla', 'Kristján'];
  print('My friends:');
  print(' ');
  for (String name in names) {
    print(name);
  }


  print('\nMessage:');
  print(' ');
  String message = 'I love you, ';
  for (String name in names) {
    print('$message$name!');
  }

  print('--------------------');

  print('\nShopping list:');
  print(' ');
  List<String> shoppingList = ['Apples', 'Bread', 'Milk', 'Eggs', 'Cheese'];
  for (String item in shoppingList) {
    print('- $item');
  }

  print(' ');
  String oldItem = 'Bread';
  String newItem = 'Cereal';
  print('Item no longer sold: - $oldItem');
  print(' ');
  print('Updated Shopping list:');
  print(' ');
  shoppingList[shoppingList.indexOf(oldItem)] = newItem;
  for (String item in shoppingList) {
    print('- $item');
  }

  print('--------------------');

  print('\nParty shopping list:');
  print(' ');
  List<String> partyItems = ['Soda', 'Chips', 'Dip'];
  print('Adding items to the list for the party:');
  print(' ');
  for (String item in partyItems) {
    shoppingList.add(item);
  }
  printShoppingList(shoppingList);


  shoppingList.insert(0, 'Ice Cream');
  print('Adding Ice Cream to the list');
  print(' ');
  printShoppingList(shoppingList);


  shoppingList.insert(shoppingList.length ~/ 2, 'Pizza');
  print('Adding Pizza to the list');
  print(' ');
  printShoppingList(shoppingList);


  shoppingList.add('Cake');
  print('Adding Cake to the list');
  print(' ');
  printShoppingList(shoppingList);

  print('Removing Pizza from the list');
  print(' ');
  shoppingList.removeAt(4);
  printShoppingList(shoppingList);


  shoppingList.sort();
  printShoppingList(shoppingList);
}

void printShoppingList(List<String> items) {
  print('Shopping List:');
  print(' ');
  for (String item in items) {
    print('- $item');
  }
  print('');
}
