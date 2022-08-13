import 'dart:io';
import 'game.dart';

void main(){
  int result = 0;
  stdout.write('Enter a maximum number to random : ');
  var number = stdin.readLineSync();
  var g = int.tryParse(number!);

  var game = Game(maxRandom: g!);
  do {
    stdout.write('PLease guess the number between 1 and $number : ');
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);
    if(guess == null){
      print('Please enter number only');
      continue;
    }
    result = game.doGuess(guess);
  }while(result != 1);
}