/*
*
* Task 22
*
*/

void main() {
  int num1 = 10;
  int num2 = 5;
  print('the sum is ${num1 + num2}');
  print('the difference is ${num1 - num2}');
  print('the product is ${num1 * num2}');
  print('the quotient is ${num1 / num2}');
  print('the remainder is ${num1 % num2}');
  //----------------------------------------------//
  int score = 85;
  if (score >= 90) {
    print('Excellent');
  } else if (score >= 75) {
    print('Good');
  } else if (score >= 50) {
    print('Pass');
  } else {
    print('Fail');
  }
  //Another solution
  // score >= 90
  //     ? print('Excellent')
  //     : score >= 75
  //         ? print('Good')
  //         : score >= 50
  //             ? print('Pass')
  //             : print('Fail');
  //----------------------------------------------//

  int day = 3;
  switch (day) {
    case 1:
      print('Monday');
    case 2:
      print('Tuesday');
    case 3:
      print('Wednesday');
    case 4:
      print('Thursday');
    case 5:
      print('Friday');
    case 6:
      print('Saturday');
    case 7:
      print('Monday');
    default:
      print('Invalid number');
  }
}
