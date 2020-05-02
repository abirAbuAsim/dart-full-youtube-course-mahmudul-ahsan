class Car {
  String brand = 'Toyota';
}

main() {
  var newCar = new Car();
  String carBrand;

  // Traditional way
  if(newCar != null) {
    carBrand = newCar.brand;
  }

  // The dart way
  carBrand = newCar?.brand; // Assigns null if newCar obj is null
  print(carBrand);
  
  carBrand = newCar?.brand ?? 0; // Assign a default value if newCar is null
  print(carBrand);
}