import 'dart:io';

void main(List<String> arguments) {

  /*
    0. Create a personal message. Use a variable to represent a person's name, and print a
    message to that person. Your message should be simple, such as 'Good morning
    Hjörtur, would you like to learn Dart strings today?'
    Store Message and Name in seperate variable.
   */

  String name = 'Brynja';

  print('Hæ elsku $name, vonandi ertu að eiga góðan dag!');
  print(' ');

  /* 1. Find a quote from a famous person you admire. Print the quote and the name of its
  author. Your output should look something like the following, including the
  quotation marks:
  1. Albert Einstein once said, 'A person who never made a mistake never tried
  anything new.'
  */

  String quote = 'You may never be good enough for everybody, but you will always be best for somebody';
  String Author = 'Rihanna';
  print('$Author once said, \'$quote\'');
  print(' ');

  /*
    2. Assign a message to a variable, and print that message. Then change the value of
  the variable to a new message, and print the new message.
   */

  String message = 'Dart is a coding language';
  print(message);
  message = 'Thats the message';
  print(message);
  print(' ');

  /*
    3.  Remove all the spaces from the rhyme. And print the modified rhyme.
   */
  String NureseryRyhme = "Eena, meena, mina, mo, Catch a mouse by the toe; If he squeals let him go, Eeena, meena, mina, mo.";
  String newRhyme = NureseryRyhme.replaceAll(' ', '');
  print(newRhyme);
  print(' ');
  /*
   4. Prompt a user for their full name (first name and last name)
    1. Store the users entry.
    2. Display the users entry with every letter being capitalised.
    3. Replace the first name with your name, and display it.
    4. Capitalise and display the users full name with each word having a capital
    first letter, and the other letters being lowercase.
   */

  stdout.write('Please enter your full name (first and last name)\n');
  String? fullName = stdin.readLineSync();

  String? storedEntry = fullName;
  String capitalisedEntry = fullName!.toUpperCase();
  print('User\'s entry in all caps: $capitalisedEntry');
  print(' ');

  String replacedName = fullName.replaceFirst('brynja', 'Eydís');
  print('Eydís sól: $replacedName');
  print(' ');

  String capitalizedFullName = fullName.split(' ')
      .map((word) =>
  (word.isNotEmpty) ? '${word[0].toUpperCase()}${word.substring(1)
      .toLowerCase()}' : '')
      .join(' ');

  print('User\'s full name with each word capitalized: $capitalizedFullName');

  /*
    5. Display the following SSN on the correct Format:
      F.x. 2006892409
   */
  print(' ');
  String SSN1 = "200689-2409";
  String SSN2 = "200689 2409";
  String SSN3 = "2 006 8924 09";

  String numb1 = SSN1.substring(0, 6);
  String numb2 = SSN1.substring(8, 11);
  String numb3 = SSN2.substring(0, 6);
  String numb4 = SSN2.substring(8, 11);
  String numb5 = SSN3.substring(0, 1);
  String numb6 = SSN3.substring(2, 5);
  String numb7 = SSN3.substring(6, 10);
  String numb8 = SSN3.substring(12, 13);
  print(numb1 + numb2);
  print(numb3 + numb4);
  print(numb5 + numb6 + numb7 + numb8);


  /*
  Bónus task calculate the age from the SSN.
   */

  String SSN = '2006892409';
  String birthday = SSN.substring(0, 6);

  int day = int.parse(birthday.substring(0, 2));
  int month = int.parse(birthday.substring(2, 4));
  int year = int.parse(birthday.substring(4, 6));

  print('$day/$month/19$year');

}