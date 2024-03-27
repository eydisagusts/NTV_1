import 'dart:io';

void main() {
  int? totalCalories;

  while (totalCalories == null) {
    print(' ');
    print('Enter your total daily calorie intake:');
    print(' ');
    String? calories = stdin.readLineSync();
    totalCalories = int.tryParse(calories!);

    if (totalCalories == null) {
      print(' ');
      print('Please enter a valid number.');
      print(' ');
    }
  }

  String? snack;
  int? snackCaloriesInput;

  while (snack == null) {
    print(' ');
    print('Enter the name of the snack you want to eat:');
    print(' ');
    snack = stdin.readLineSync();

    while (snackCaloriesInput == null) {
      print(' ');
      print('What is the calorie value of that snack?');
      print(' ');
      String? snackCalories = stdin.readLineSync();
      snackCaloriesInput = int.tryParse(snackCalories!);

      if (snackCaloriesInput == null) {
        print(' ');
        print('Please enter a valid number for snack calories.');
        print(' ');
      }
    }
  }


  int caloriesOverLimit = snackCaloriesInput! - totalCalories;
  int caloriesUnderLimit = totalCalories - snackCaloriesInput;

  if (snackCaloriesInput > totalCalories) {
    print(' ');
    print('Warning: $snack has $caloriesOverLimit more calories than your daily intake! We recommend you to avoid this snack.');
  } else if (snackCaloriesInput < totalCalories) {
    print(' ');
    print('You can eat $snack. It is $caloriesUnderLimit calories under your daily limit.');
  } else {
    print(' ');
    print('$snack has exactly $totalCalories calories. This will be your last snack of the day!');
  }
}
