import 'dart:io';

import 'package:test/expect.dart';

void main () {



  String? name = 'Eydís';
  print('hello $name');
  name = 'Brynja';
  print('hello $name');

  print(' ');

  int? price = 100;
  double tax = 0.24;
  double taxresault = tax * price;
  double FinalResault = price - taxresault;

  print('Vaskurinn á þessu er');
  print(taxresault);
  print(' ');
  print('Loka verð er þá');
  print(FinalResault);
  print(' ');

  String message = 'Hello world';
  print(message.toUpperCase());

  print(' ');

  print('Enter your name here');
  name = stdin.readLineSync();
  print(name);

  print(' ');

  String? myPhoneNumer = '7701230';

  print('I have a phone number');
  print('My phone number is $myPhoneNumer');
  print('How many letters are in my phone number?');
  String? number = stdin.readLineSync();

  print(' ');

  if (number == '7') {
    print("That's correct! My phone number has 7 letters.");
  } else {
    print('Unfortunately thats no correct, my phone number has 7 letters');
  }

  print(' ');

  double myResault;
  myResault = 12 / 7;
  print('result:' + myResault.toStringAsFixed(3));

}