import 'dart:math';

void main () {

  for(int i = 0; i < 6; i++)
  {
    print(i);

  }

  print('------------------------');

  for(int i = 5; i > -1; i--)
  {
    print(i);
  }

  print('------------------------');

  for(int i = 0; i < 110; i += 10)
  {
    print(i);
  }

  print('------------------------');

  for(int i = 100; i > -10; i -= 10)
  {
    print(i);
  }

  print('------------------------');

  Random r = new Random();
  int randomNumber = 0;
  while (randomNumber != 3)
  {
    randomNumber = r.nextInt(10);
    print(randomNumber);
  }

  print('------------------------');


}