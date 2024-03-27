import 'dart:io';

void main() {
  List<String> matur = ['Hamborgari', 'Franskar', 'Gos'];
  List<int> verd = [1200, 500, 300];
  List<String> borgari = ['Ostur', 'Bacon', 'Tómatur'];

  List<String> order = [];
  int totalCost = 0;

  print('Velkomin á Hambargarabúllu Tómasar!');
  print(' ');

  while (true) {
    print('Matseðill:');
    print(' ');
    for (int i = 0; i < matur.length; i++) {
      print('${i + 1}. ${matur[i]} - ${verd[i]}');
    }

    print(' ');
    print('Hvað má bjóða þér að panta?');

    String? input = stdin.readLineSync();

    if (input == 'quit') {
      break;
    } else {
      int? menuItem = int.tryParse(input!);
      if (menuItem != null && menuItem >= 1 && menuItem <= matur.length) {
        List<String> toppings = [];

        if (menuItem == 1) {
          print(' ');
          print('Veldu álegg \n1: Ostur \n2: Bacon \n3: Tómatur');
          print('\nÞú getur smellt aftur á númer áleggsins til að fjarlægja það');
          print(' ');
          print('Skrifaðu "ok" þegar þú hefur valið þín álegg');

          while (true) {
            String? burgerInput = stdin.readLineSync();

            if (burgerInput == 'ok') {
              break;
            } else {
              int? toppingChoice = int.tryParse(burgerInput!);
              if (toppingChoice != null && toppingChoice >= 1 && toppingChoice <= borgari.length) {
                String selectedTopping = borgari[toppingChoice - 1];
                if (toppings.contains(selectedTopping)) {
                  toppings.remove(selectedTopping);
                  print('$selectedTopping hefur verið fjarlægður.');
                } else {
                  toppings.add(selectedTopping);
                  print('$selectedTopping hefur verið bætt við á Hamborgarann þinn.');
                }
              } else {
                print('Ekki rétt valið, vinsamlegast veldu eftirfarandi álegg');
              }
            }
          }
        }

        String burgerOrder = matur[menuItem - 1] + ' ' + toppings.join(', ');
        order.add(burgerOrder);
        totalCost += verd[menuItem - 1];
      }
    }
  }

  print('\nPöntunin þín:');
  order.forEach((item) => print(item));
  print('Verð: $totalCost');

  print('\nTakk fyrir að velja Hamborgarabúllu Tómasar!');
}
