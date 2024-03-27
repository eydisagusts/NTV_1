import 'dart:io';
import 'package:untitled/CarDealerShip.dart';

void main() {

  carType toyotaCamry = new carType(energySource: 'Gasoline', type: 'Sedan');
  carType toyotaCorolla = new carType(energySource: 'Gasoline', type: 'Sedan');
  carType hondaCivic = new carType(energySource: 'Gasoline', type: 'Sedan');
  carType hondaAccord = new carType(energySource: 'Gasoline', type: 'Sedan');
  carType fordMustang = new carType(energySource: 'Gasoline', type: 'Sports Car');
  carType fordF150 = new carType(energySource: 'Gasoline', type: 'Truck');
  carType chevroletMalibu = new carType(energySource: 'Gasoline', type: 'Sedan');
  carType chevroletSilverado = new carType(energySource: 'Gasoline', type: 'Truck');
  carType bmwx5 = new carType(energySource: 'Gasoline', type: 'SUV');
  carType bmw3Series = new carType(energySource: 'Gasoline', type: 'Sedan');

  var carsList = [
    car(name: 'Toyota', model: 'Camry', yearRelease: 2015, color: 'Blue'),
    car(name: 'Toyota', model: 'Corolla', yearRelease: 2018, color: 'Silver'),
    car(name: 'Honda', model: 'Civic', yearRelease: 2017, color: 'Red'),
    car(name: 'Honda', model: 'Accord', yearRelease: 2016, color: 'White'),
    car(name: 'Ford', model: 'Mustang', yearRelease: 2014, color: 'Black'),
    car(name: 'Ford', model: 'F-150', yearRelease: 2019, color: 'Gray'),
    car(name: 'Chevrolet', model: 'Malibu', yearRelease: 2013, color: 'Green'),
    car(name: 'Chevrolet',
        model: 'Silverado',
        yearRelease: 2015,
        color: 'Yellow'),
    car(name: 'BMW', model: 'X5', yearRelease: 2018, color: 'Blue'),
    car(name: 'BMW', model: '3 series', yearRelease: 2017, color: 'Black')
  ];

  print('Welcome to our car sale!');
  print('Here is a list of every car brand we have for sale:');
  print(' ');
  print('1. Toyota');
  print('2. Honda');
  print('3. Ford');
  print('4. Chevrolet');
  print('5. BMW');
  print(' ');
  print('Please choose which car you would like more information about');

  String? firstChoice = stdin.readLineSync();

  switch (firstChoice) {
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
      print('Invalid choice');
      break;
  }
}
