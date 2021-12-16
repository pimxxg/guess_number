// ignore_for_file: avoid_print
import 'dart:io';
import 'dart:math';

void main() {
  var r = Random();
  var ans = r.nextInt(5);
  var count = 0;

  for (;;) {
    stdout.write('Please guess number : ');
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);
    if (guess == null){
      guess = null ;
    }
    else if (guess == ans) {
      count++;
      print("$guess is CORRECT! ❤");
      break;
    } else if (guess != ans) {
      if (guess > ans) {
        count++;
        print("$guess is TOO HIGH!");
      } else {
        if (guess < ans) {
          count++;
          print("$guess is TOO LOW! ");
        }
      }
    }
  }
  print("Total guess " + count.toString());
}
