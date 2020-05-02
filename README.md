## Dart Fundamentals

### Supports both type inference and static types: 

```
main() {
  var firstName = 'Abir'; // Type inference
  String lastName = 'Khan'; // Static Type

  print(firstName + ' ' + lastName);
}
```

* dart core package is imported automatically in any dart project whether you explicitly import it or not

### Input output Example:
```
import 'dart:io';

/***
 * Main method showing input output code example
 */
main() {
  stdout.writeln('What is your name: '); // Displaying a prompt
  String name = stdin.readLineSync(); // Taking user input


  /*
    String Interpolation,
    Displaying a value of a variable using $ sign in front of it
  */
  print('My name is $name'); 
}
```

### Data types:
```
main() {
  /*
    int 
    double 
    String
    bool
    dynamic
  */

  int salary1 = 100;
  var salary2 = 200;

  print('Salary1 : $salary1 | Salaryy2 : $salary2');

  double doubleDigitSalary1 = 100.00;
  var doubleDigitSalary2 = 200.00;

  print('DoubleDigitSalary1 : $doubleDigitSalary1 | DoubleDigitSalary2 : $doubleDigitSalary2');

  String favColor1 = 'Purple';
  var favColor2 = 'Violet';

  print('Favorite Color1 : $favColor1 | Favorite Color 2 : $favColor2');

  bool doIKnowDart1 = false;
  var doIKnowDart2 = true;

  print('DoIKnowDart1 : $doIKnowDart1 | DoIKnowDart2 : $doIKnowDart2');

  
  dynamic covidCasesInBd = 100;

  print('covidCasesInBd : $covidCasesInBd');

  covidCasesInBd = 'Not Found';

  print('covidCasesInBd : $covidCasesInBd');
}
```