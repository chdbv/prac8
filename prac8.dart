import 'dart:io';

void main() {
  binary_search();
}

void binary_search() {
  int min = 0;
  int max = 100;
  int steps = 0;
  int mid = getMiddle(min, max);

  String? answer = stdin.readLineSync();

  while (answer != 'verno') {
    if (answer == 'bolshe') {
      min = mid + 1;
    } else {
      max = mid - 1;
    }
    mid = getMiddle(min, max);
    answer = stdin.readLineSync();
    steps++;
  }

  print('Вы угадали число $steps ');
}

int getMiddle(int min, int max) {
  return (min + max) ~/ 2;
}
