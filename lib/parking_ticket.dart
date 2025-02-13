// class ParkingTicket {
//   final String _carMake;
//   final String _carModel;
//   final String _carColor;
//   final String _licenseNumber;
//   final double _fine;
//   final String _officerName;
//   final String _officerBadge;

//   ParkingTicket(this._carMake, this._carModel, this._carColor, this._licenseNumber, this._fine, this._officerName, this._officerBadge);

//   @override
//   String toString() {
//     return '''
// PARKING TICKET:
// Car: $_carMake $_carModel ($_carColor), License: $_licenseNumber
// Fine: \$$_fine
// Issued by: Officer $_officerName, Badge No: $_officerBadge
//     ''';
//   }
// }

class ParkingTicket {
  // Private instance variables
  String _carMake;
  String _carModel;
  String _carColor;
  String _licenseNumber;
  double _fine;
  String _officerName;
  String _officerBadge;

  // Default constructor
  ParkingTicket.defaultTicket()
      : _carMake = "",
        _carModel = "",
        _carColor = "",
        _licenseNumber = "",
        _fine = 0.0,
        _officerName = "",
        _officerBadge = "";

  // Parameterized constructor
  ParkingTicket(this._carMake, this._carModel, this._carColor, this._licenseNumber, this._fine, this._officerName, this._officerBadge);

  // Getters
  String get carMake => _carMake;
  String get carModel => _carModel;
  String get carColor => _carColor;
  String get licenseNumber => _licenseNumber;
  double get fine => _fine;
  String get officerName => _officerName;
  String get officerBadge => _officerBadge;

  // Setters
  set carMake(String make) => _carMake = make;
  set carModel(String model) => _carModel = model;
  set carColor(String color) => _carColor = color;
  set licenseNumber(String license) => _licenseNumber = license;
  set fine(double fine) => _fine = fine;
  set officerName(String name) => _officerName = name;
  set officerBadge(String badge) => _officerBadge = badge;

  // toString method
  @override
  String toString() {
    return '''
PARKING TICKET:
Car: $_carMake $_carModel ($_carColor), License: $_licenseNumber
Fine: \$$_fine
Issued by: Officer $_officerName, Badge No: $_officerBadge
    ''';
  }
}
