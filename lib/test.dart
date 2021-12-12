// top-level function
import 'dart:io';
import 'dart:math';

void main() {
  var count = 0;
  var r = Random();
  var answer = r.nextInt(100);
  print('╔══════════════════════════════════════════');
  print('║             GUESS THE NUMBER');
  print('╟──────────────────────────────────────────');
  // loop guess number
  while (true) {
    stdout.write('║ Guess the number between 1 to 100: ');
    var guess = stdin.readLineSync();
    int.tryParse(guess!);

    // input string or mix
    if (int.tryParse(guess!) == null) {
    }
    // input number
    else {
      count++;

      // when equal
      if (int.tryParse(guess)! == answer) {
        print("║ ▶ $guess is CORRECT ✨  total guesses: $count");
        break;
      }

      // when high
      else if (int.tryParse(guess)! > answer) {
        print('║ ▶ $guess is TOO HIGH! ▲');
        print('╟──────────────────────────────────────────');
      }

      // when low
      else if (int.tryParse(guess)! < answer) {
        print('║ ▶ $guess is TOO LOW ▼');
        print('╟──────────────────────────────────────────');
      }
    }
  }
  print('╟──────────────────────────────────────────');
  print('║                 THE END');
  print('╚══════════════════════════════════════════');
}

// console app
