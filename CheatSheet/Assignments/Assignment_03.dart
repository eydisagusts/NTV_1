import 'dart:io';

void main () {

  // 1.  Create an empty list to store the grocery items.

  List<String> groceryList = [];

  // 2. Create a method called "addItemToList" that takes an item as input and adds it to the list.

  void addItemToList(String item) {
    groceryList.add(item);
  }

  // 3. Create a menu system that allows the user to choose between adding an item to the list, viewing the list, or ending the program.

  while (true) {
    print("Menu:");
    print("1. Add an item to the list");
    print("2. View your grocery list");
    print("3. Remove an item from your grocery list");
    print("4. End the program");

    String? choice = stdin.readLineSync();

    switch (choice) {
    // 4. If the user chooses to add an item, prompt them for the item name and call the "addItemToList" method to add it to the list.
      case '1':
        print(' ');
        print("Enter an item to add:");
        String? item = stdin.readLineSync();
        addItemToList(item!);
        print(' ');
        print('$item has been added to your grocery list');
        print(' ');
        break;
      case '2':
      // 5. If the user chooses to view the list, display the contents of the list.
        print(' ');
        print("Your grocery list:");
        print(' ');
        for (String item in groceryList) {
          print(item);
        }
        print(' ');
        break;
      case '3':
      // Extra challenge - Remove an item from the list
        print(' ');
        print("Enter the item to remove:");
        String? itemToRemove = stdin.readLineSync();
        groceryList.remove(itemToRemove);
        print(' ');
        print('$itemToRemove has been removed from your grocery list');
        print(' ');
        break;
      case '4':
      // 6. If the user chooses to end the program, exit the menu loop and end the program.
        print(' ');
        print("The program has ended.");
        return;
      default:
        print(' ');
        print("Invalid choice. Please choose a valid number.");
        print(' ');
    }
  }
}