main() {
  List <String> names = ['Mo', 'Jo'];

  var names2 = names; // Pass by reference, still points to the names variable
  var namesWithSpread = [...names]; // A copy of the list is created
  names[0] = 'Bo';

  names2.forEach((name) => print(name)); // Changing names will change names2

  namesWithSpread.forEach((name) => print(name)); // changing names will not effect it anymore
}