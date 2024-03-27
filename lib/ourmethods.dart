import "dart:math";

class UserInfo {
  int id = getUserId();
  String name;
  late String email = generateEmail(name, company.url);
  Company company;

  UserInfo({required this.name, required this.company});

  void displayUserInfo() {
    print('User ID: $id');
    print('Name: $name');
    print('Email: $email');
    print('Company: ${company.name}');
  }
}

class Company {
  String name;
  String url;

  Company({required this.name, required this.url});
}

int getUserId() {
  Random random = Random();
  int randomNum = random.nextInt(100);
  return randomNum;
}

String generateEmail(String name, String url) {
  List<String> names = name.split(" ");
  String firstName = names[0];
  String lastName = names.last;
  String fullName = firstName + lastName.substring(0, 3);
  String result = icelandicToEnglish(fullName);
  return "${result.toLowerCase()}@$url";
}

String icelandicToEnglish(String input) {
  Map<String, String> icelandicLetters = {
    'á': 'a',
    'ð': 'd',
    'é': 'e',
    'í': 'i',
    'ó': 'o',
    'ú': 'u',
    'ý': 'y',
    'þ': 'th',
    'æ': 'ae',
    'ö': 'o',
  };

  return input.replaceAllMapped(RegExp('[áðéíóúýþæö]'),
          (match) => icelandicLetters[match.group(0)] ?? match.group(0)!);
}