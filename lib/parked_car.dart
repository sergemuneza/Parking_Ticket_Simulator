// class ParkedCar {
//   final String _make;
//   final String _model;
//   final String _color;
//   final String _licenseNumber;
//   final int _minutesParked;

//   ParkedCar(this._make, this._model, this._color, this._licenseNumber, this._minutesParked);

//   String get make => _make;
//   String get model => _model;
//   String get color => _color;
//   String get licenseNumber => _licenseNumber;
//   int get minutesParked => _minutesParked;

  

//   @override
//   String toString() {
//     return 'Car: $_make $_model ($_color), License: $_licenseNumber, Parked for: $_minutesParked minutes';
//   }
// }

class ParkedCar {
  // Private instance variables
  String _make;
  String _model;
  String _color;
  String _licenseNumber;
  int _minutesParked;

  // Default constructor
  ParkedCar.defaultCar()
      : _make = "",
        _model = "",
        _color = "",
        _licenseNumber = "",
        _minutesParked = 0;

  // Parameterized constructor
  ParkedCar(this._make, this._model, this._color, this._licenseNumber, this._minutesParked);

  // Getters
  String get make => _make;
  String get model => _model;
  String get color => _color;
  String get licenseNumber => _licenseNumber;
  int get minutesParked => _minutesParked;

  // Setters
  set make(String make) => _make = make;
  set model(String model) => _model = model;
  set color(String color) => _color = color;
  set licenseNumber(String licenseNumber) => _licenseNumber = licenseNumber;
  set minutesParked(int minutesParked) => _minutesParked = minutesParked;

  // toString method
  @override
  String toString() {
    return 'Car: $_make $_model ($_color), License: $_licenseNumber, Parked for: $_minutesParked minutes';
  }
}
