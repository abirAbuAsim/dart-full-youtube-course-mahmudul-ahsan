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