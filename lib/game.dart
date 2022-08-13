import 'dart:io';
import 'dart:math';

class Game{
  int answer = 0;
  int count = 0;
  Game({int maxRandom = 100}){
    var r = Random();
    answer = r.nextInt(maxRandom) + 1;
    print('คำตอบคือ $answer');
  }
  int doGuess(int num){
    if(num > answer){
      print('➜ $num is too high! ▲');
      count++;
      return 0;
    }
    else if(num < answer){
      print('➜ $num is too low! ▼');
      count++;
      return 0;
    }
    else{
      count++;
      print('➜ $num is correct ❤, total guesses: $count');
      print('══════════════════════════════════════════════');
      stdout.write('Play again? (Y/N) : ');
      var x = stdin.readLineSync();
      print('══════════════════════════════════════════════');
      if(x == "y" || x == "Y"){
        return 0;
      }
      if(x == "n" || x == "N"){
        return 1;
      }
      else{
        print('error!!');
        return 0;
      }
    }
  }
}