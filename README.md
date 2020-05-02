This Repo has been written to follow along the video course on Dart titled 'Dart Programming Tutorial - Full Course' published on freeCodeCamp.org's youtube channel and taught by Mahmudul Hasan.

To watch the video go here, 

[![IMAGE ALT TEXT HERE](http://img.youtube.com/vi/Ej_Pcr4uC2Q/0.jpg)](http://www.youtube.com/watch?v=Ej_Pcr4uC2Q)

---
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
---
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
---
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

  print('Salary1 : $salary1 | Salary2 : $salary2');

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
* Dart is an Object Oriented Programming language
* Pretty much everything is an object in dart. For Example `main()` method is an object of 

### Null Aware Operators:
* ?.
* ?? 

```
class Car {
  String brand = 'Toyota';
}

main() {
  var newCar = new Car();
  String carBrand;

  // Traditional way
  if(newCar != null) {
    carBrand = newCar?.brand;
  }

  carBrand = newCar?.brand; // The dart way

  print(carBrand);
}
```

* ??=
```
main() {
    int number;
    print(number ??= 150); // prints 150
    print(number); // Again Prints 150 as number variable is assigned the value 150 by using ??=
}
```
---
### Testing the type of a variable: 

```
main() {
  var age = 100;
  if(age is int) {
    print('Integer');
  } else {
    print('Not Integer');
  }
}
```
---
### Different Loops:
* For-In loop 

```
main() {
  var numbers = [10, 20, 30];

  for(var n in numbers) {
    print(n);
  }
}
```
* For-Each loop 

```
main() {
  var numbers = [10, 20, 30];

  numbers.forEach( (n) => print(n));
}
```
* Other than these Dart supports classic for, while and do-while loops
* It also supports break and continue feature like most languages
---

### Collections:
* List

```
main() {
  List students1 = ['Abir', 'Aqib', 1, 2];

  students1.forEach((eachStudent) => print(eachStudent));

  List <String> students2 = ['Abir', 'Aqib'];

  students2.forEach((eachStudent) => print(eachStudent));
}
```
* Copying lists with spread operator
```
main() {
  List <String> names = ['Mo', 'Jo'];

  var names2 = names; // Pass by reference, still points to the names variable
  var namesWithSpread = [...names]; // A copy of the list is created
  names[0] = 'Bo';

  names2.forEach((name) => print(name)); // Changing names will change names2

  namesWithSpread.forEach((name) => print(name)); // changing names will not effect it anymore
}
```
* Set

```
main() {
  var favoriteColors = { 'Red', 'Green', 'Red'};

  favoriteColors.forEach((color) => print(color));

  Set <String> favoriteColors2 = { 'Yellow', 'Green', 'Yellow'};

  favoriteColors2.forEach((color) => print(color));
}
```
* Map

```
main() {
  var cloudLeaders = {
    'first': 'AWS',
    'second': 'Azure',
    'third': 'GCP'
  };

  print(cloudLeaders['first']);

  var cloudLeaders2 = {
    1: 'AWS',
    2: 'Azure',
    3: 'GCP'
  };

  print(cloudLeaders2[2]);
}
```