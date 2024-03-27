import 'dart:io';

class car {
  String? name;
  String? model;
  int? yearRelease;
  String? color;

  car({this.name, this.model, this.yearRelease, this.color});
}

class carType {
  String? energySource;
  String? type;

  carType({this.energySource, this.type});
}

List<carType> carTypeList = [
  carType(energySource: 'Gasoline', type: 'Sedan'),
  carType(energySource: 'Gasoline', type: 'Sedan'),
  carType(energySource: 'Gasoline', type: 'Sedan'),
  carType(energySource: 'Gasoline', type: 'Sedan'),
  carType(energySource: 'Gasoline', type: 'Sports Car'),
  carType(energySource: 'Gasoline', type: 'Truck'),
  carType(energySource: 'Gasoline', type: 'Sedan'),
  carType(energySource: 'Gasoline', type: 'Truck'),
  carType(energySource: 'Gasoline', type: 'SUV'),
  carType(energySource: 'Gasoline', type: 'Sedan'),
];

void toyota(List<car> carsList) {
  print(' ');
  print('We have 2 cars from Toyota, which car would you like more information about?');
  print(' ');
  print('1. Toyota Corolla');
  print('2. Toyota Camry');
  String? toyotaInput = stdin.readLineSync();

  switch (toyotaInput) {
    case '1':
      var toyotaCorolla = carsList.where((car) => car.name == 'Toyota' && car.model!.toLowerCase() == 'corolla');
      if (toyotaCorolla.isNotEmpty) {
        print(' ');
        print('Toyota Corolla:');
        print(' ');
        toyotaCorolla.forEach((car) {
          print('Name: ${car.name}\nModel: ${car.model}\nYear Release: ${car.yearRelease}\nColor: ${car.color}');
        });

        print(' ');
        print('Would you like to see type and energySource? yes/no');
        String? moreInfoInput = stdin.readLineSync();

        if (moreInfoInput!.toLowerCase() == 'yes') {
          for (var carType in carTypeList) {
            if (carType.type == 'Sedan') {
              print('EnergySource: ${carType.energySource}\nType: ${carType.type}');
              break;
            }
          }
        } else {
          print('Exiting Program');
        }
      } else {
        print('Toyota Corolla not found in the list.');
      }
      break;

    case '2':
      var toyotaCamry = carsList.where((car) => car.name == 'Toyota' && car.model!.toLowerCase() == 'camry');
      if (toyotaCamry.isNotEmpty) {
        print(' ');
        print('Toyota Camry:');
        print(' ');
        toyotaCamry.forEach((car) {
          print('Name: ${car.name}\nModel: ${car.model}\nYear Release: ${car.yearRelease}\nColor: ${car.color}');
        });

        print(' ');
        print('Would you like to see type and energySource? yes/no');
        String? moreInfoInput = stdin.readLineSync();

        if (moreInfoInput!.toLowerCase() == 'yes') {
          for (var carType in carTypeList) {
            if (carType.type == 'Sedan') {
              print('EnergySource: ${carType.energySource}\nType: ${carType.type}');
              break;
            }
          }
        } else {
          print('Exiting Program');
        }
      } else {
        print('Toyota Camry not found in the list.');
      }
      break;

    default:
      print('Invalid choice.');
      break;
  }
}

void honda(List<car> carsList) {
  print(' ');
  print('We have 2 cars from Honda, which car would you like more information about?');
  print(' ');
  print('1. Honda Civic');
  print('2. Honda Accord');
  String? hondaInput = stdin.readLineSync();

  switch (hondaInput) {
    case '1':
      var hondaCivic = carsList.where((car) => car.name == 'Honda' && car.model!.toLowerCase() == 'civic');
      if (hondaCivic.isNotEmpty) {
        print(' ');
        print('Honda Civic:');
        print(' ');
        hondaCivic.forEach((car) {
          print('Name: ${car.name}\nModel: ${car.model}\nYear Release: ${car.yearRelease}\nColor: ${car.color}');
        });

        print(' ');
        print('Would you like to see type and energySource? yes/no');
        String? moreInfoInput = stdin.readLineSync();

        if (moreInfoInput!.toLowerCase() == 'yes') {
          for (var carType in carTypeList) {
            if (carType.type == 'Sedan') {
              print('EnergySource: ${carType.energySource}\nType: ${carType.type}');
              break;
            }
          }
        } else {
          print('Exiting Program');
        }
      } else {
        print('Honda Civic not found in the list.');
      }
      break;

    case '2':
      var hondaAccord = carsList.where((car) => car.name == 'Honda' && car.model!.toLowerCase() == 'accord');
      if (hondaAccord.isNotEmpty) {
        print(' ');
        print('Honda Accord:');
        print(' ');
        hondaAccord.forEach((car) {
          print('Name: ${car.name}\nModel: ${car.model}\nYear Release: ${car.yearRelease}\nColor: ${car.color}');
        });

        print(' ');
        print('Would you like to see type and energySource? yes/no');
        String? moreInfoInput = stdin.readLineSync();

        if (moreInfoInput!.toLowerCase() == 'yes') {
          for (var carType in carTypeList) {
            if (carType.type == 'Sedan') {
              print('EnergySource: ${carType.energySource}\nType: ${carType.type}');
              break;
            }
          }
        } else {
          print('Exiting Program');
        }
      } else {
        print('Honda Accord not found in the list.');
      }
      break;

    default:
      print('Invalid choice.');
      break;
  }
}

void ford(List<car> carsList) {
  print(' ');
  print('We have 2 cars from Ford, which car would you like more information about?');
  print(' ');
  print('1. Ford Mustang');
  print('2. Ford F-150');
  String? fordInput = stdin.readLineSync();

  switch (fordInput) {
    case '1':
      var fordMustang = carsList.where((car) => car.name == 'Ford' && car.model!.toLowerCase() == 'mustang');
      if (fordMustang.isNotEmpty) {
        print(' ');
        print('Ford Mustang:');
        print(' ');
        fordMustang.forEach((car) {
          print('Name: ${car.name}\nModel: ${car.model}\nYear Release: ${car.yearRelease}\nColor: ${car.color}');
        });

        print(' ');
        print('Would you like to see type and energySource? yes/no');
        String? moreInfoInput = stdin.readLineSync();

        if (moreInfoInput!.toLowerCase() == 'yes') {
          for (var carType in carTypeList) {
            if (carType.type == 'Sports Car') {
              print('EnergySource: ${carType.energySource}\nType: ${carType.type}');
              break;
            }
          }
        } else {
          print('Exiting Program');
        }
      } else {
        print('Ford Mustang not found in the list.');
      }
      break;

    case '2':
      var fordF150 = carsList.where((car) => car.name == 'Ford' && car.model!.toLowerCase() == 'f-150');
      if (fordF150.isNotEmpty) {
        print(' ');
        print('Ford F-150:');
        print(' ');
        fordF150.forEach((car) {
          print('Name: ${car.name}\nModel: ${car.model}\nYear Release: ${car.yearRelease}\nColor: ${car.color}');
        });

        print(' ');
        print('Would you like to see type and energySource? yes/no');
        String? moreInfoInput = stdin.readLineSync();

        if (moreInfoInput!.toLowerCase() == 'yes') {
          for (var carType in carTypeList) {
            if (carType.type == 'Truck') {
              print('EnergySource: ${carType.energySource}\nType: ${carType.type}');
              break;
            }
          }
        } else {
          print('Exiting Program');
        }
      } else {
        print('Ford F-150 not found in the list.');
      }
      break;

    default:
      print('Invalid choice.');
      break;
  }
}

void chevrolet(List<car> carsList) {
  print(' ');
  print('We have 2 cars from Chevrolet, which car would you like more information about?');
  print(' ');
  print('1. Chevrolet Malibu');
  print('2. Chevrolet Silverado');
  String? chevroletInput = stdin.readLineSync();

  switch (chevroletInput) {
    case '1':
      var chevroletMalibu = carsList.where((car) => car.name == 'Chevrolet' && car.model!.toLowerCase() == 'malibu');
      if (chevroletMalibu.isNotEmpty) {
        print(' ');
        print('Chevrolet Malibu:');
        print(' ');
        chevroletMalibu.forEach((car) {
          print('Name: ${car.name}\nModel: ${car.model}\nYear Release: ${car.yearRelease}\nColor: ${car.color}');
        });

        print(' ');
        print('Would you like to see type and energySource? yes/no');
        String? moreInfoInput = stdin.readLineSync();

        if (moreInfoInput!.toLowerCase() == 'yes') {
          for (var carType in carTypeList) {
            if (carType.type == 'Sedan') {
              print('EnergySource: ${carType.energySource}\nType: ${carType.type}');
              break;
            }
          }
        } else {
          print('Exiting Program');
        }
      } else {
        print('Chevrolet Malibu not found in the list.');
      }
      break;

    case '2':
      var chevroletSilverado = carsList.where((car) => car.name == 'Chevrolet' && car.model!.toLowerCase() == 'silverado');
      if (chevroletSilverado.isNotEmpty) {
        print(' ');
        print('Chevrolet Silverado:');
        print(' ');
        chevroletSilverado.forEach((car) {
          print('Name: ${car.name}\nModel: ${car.model}\nYear Release: ${car.yearRelease}\nColor: ${car.color}');
        });

        print(' ');
        print('Would you like to see type and energySource? yes/no');
        String? moreInfoInput = stdin.readLineSync();

        if (moreInfoInput!.toLowerCase() == 'yes') {
          for (var carType in carTypeList) {
            if (carType.type == 'Truck') {
              print('EnergySource: ${carType.energySource}\nType: ${carType.type}');
              break;
            }
          }
        } else {
          print('Exiting Program');
        }
      } else {
        print('Chevrolet Silverado not found in the list.');
      }
      break;

    default:
      print('Invalid choice.');
      break;
  }
}

void bmw(List<car> carsList) {
  print(' ');
  print('We have 2 cars from BMW, which car would you like more information about?');
  print(' ');
  print('1. BMW X5');
  print('2. BMW 3 series');
  String? bmwInput = stdin.readLineSync();

  switch (bmwInput) {
    case '1':
      var bmwx5 = carsList.where((car) => car.name == 'BMW' && car.model!.toLowerCase() == 'x5');
      if (bmwx5.isNotEmpty) {
        print(' ');
        print('BMW X5:');
        print(' ');
        bmwx5.forEach((car) {
          print('Name: ${car.name}\nModel: ${car.model}\nYear Release: ${car.yearRelease}\nColor: ${car.color}');
        });

        print(' ');
        print('Would you like to see type and energySource? yes/no');
        String? moreInfoInput = stdin.readLineSync();

        if (moreInfoInput!.toLowerCase() == 'yes') {
          for (var carType in carTypeList) {
            if (carType.type == 'SUV') {
              print('EnergySource: ${carType.energySource}\nType: ${carType.type}');
              break;
            }
          }
        } else {
          print('Exiting Program');
        }
      } else {
        print('BMW X5 not found in the list.');
      }
      break;

    case '2':
      var bmw3series = carsList.where((car) => car.name == 'BMW' && car.model!.toLowerCase() == '3 series');
      if (bmw3series.isNotEmpty) {
        print(' ');
        print('BMW 3 series:');
        print(' ');
        bmw3series.forEach((car) {
          print('Name: ${car.name}\nModel: ${car.model}\nYear Release: ${car.yearRelease}\nColor: ${car.color}');
        });

        print(' ');
        print('Would you like to see type and energySource? yes/no');
        String? moreInfoInput = stdin.readLineSync();

        if (moreInfoInput!.toLowerCase() == 'yes') {
          for (var carType in carTypeList) {
            if (carType.type == 'Sedan') {
              print('EnergySource: ${carType.energySource}\nType: ${carType.type}');
              break;
            }
          }
        } else {
          print('Exiting Program');
        }
      } else {
        print('BMW 3 Series not found in the list.');
      }
      break;

    default:
      print('Invalid choice.');
      break;
  }
}

void main() {
  List<car> carsList = [
    car(name: 'Toyota', model: 'Corolla', yearRelease: 2020, color: 'Red'),
    car(name: 'Toyota', model: 'Camry', yearRelease: 2021, color: 'Blue'),
    car(name: 'Honda', model: 'Civic', yearRelease: 2019, color: 'Black'),
    car(name: 'Honda', model: 'Accord', yearRelease: 2022, color: 'White'),
    car(name: 'Ford', model: 'Mustang', yearRelease: 2018, color: 'Yellow'),
    car(name: 'Ford', model: 'F-150', yearRelease: 2020, color: 'Silver'),
    car(name: 'Chevrolet', model: 'Malibu', yearRelease: 2021, color: 'Gray'),
    car(name: 'Chevrolet', model: 'Silverado', yearRelease: 2019, color: 'Green'),
    car(name: 'BMW', model: 'X5', yearRelease: 2020, color: 'Black'),
    car(name: 'BMW', model: '3 series', yearRelease: 2023, color: 'Blue'),
  ];

  print('Welcome to the Car Information Program!');
  print(' ');
  print('Which car brand would you like to learn more about?');
  print('1. Toyota');
  print('2. Honda');
  print('3. Ford');
  print('4. Chevrolet');
  print('5. BMW');
  print(' ');
  String? brandInput = stdin.readLineSync();

  switch (brandInput) {
    case '1':
      toyota(carsList);
      break;
    case '2':
      honda(carsList);
      break;
    case '3':
      ford(carsList);
      break;
    case '4':
      chevrolet(carsList);
      break;
    case '5':
      bmw(carsList);
      break;
    default:
      print('Invalid choice.');
      break;
  }
}


