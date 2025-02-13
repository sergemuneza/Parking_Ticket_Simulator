// import 'package:parking_project/parked_car.dart';
// import 'package:parking_project/parking_meter.dart';
// import 'package:parking_project/parking_ticket.dart';

// class PoliceOfficer {
//   String _name;
//   String _badgeNumber;

//   PoliceOfficer(this._name, this._badgeNumber);

//   // Add getters
//   String get name => _name;
//   String get badgeNumber => _badgeNumber;

//   ParkingTicket? inspectCar(ParkedCar car, ParkingMeter meter) {
//     if (car.minutesParked > meter.minutesPurchased) {
//       int extraMinutes = car.minutesParked - meter.minutesPurchased;
//       int extraHours = (extraMinutes / 60).ceil();
//       double fine = 25.0 + (extraHours - 1) * 10.0;

//       return ParkingTicket(car.make, car.model, car.color, car.licenseNumber, fine, _name, _badgeNumber);
//     }
//     return null;
//   }

//   @override
//   String toString() {
//     return 'Officer $_name, Badge No: $_badgeNumber';
//   }
// }

import 'package:parking_project/parked_car.dart';
import 'package:parking_project/parking_meter.dart';
import 'package:parking_project/parking_ticket.dart';

class PoliceOfficer {
  // Private instance variables
  String _name;
  String _badgeNumber;

  // Default constructor
  PoliceOfficer.defaultOfficer()
      : _name = "",
        _badgeNumber = "";

  // Parameterized constructor
  PoliceOfficer(this._name, this._badgeNumber);

  // Getters
  String get name => _name;
  String get badgeNumber => _badgeNumber;

  // Setters
  set name(String name) => _name = name;
  set badgeNumber(String badge) => _badgeNumber = badge;

  // Method to inspect a car and issue a ticket if necessary
  ParkingTicket? inspectCar(ParkedCar car, ParkingMeter meter) {
    if (car.minutesParked > meter.minutesPurchased) {
      int extraMinutes = car.minutesParked - meter.minutesPurchased;
      int extraHours = (extraMinutes / 60).ceil();
      double fine = 25.0 + (extraHours - 1) * 10.0;

      return ParkingTicket(car.make, car.model, car.color, car.licenseNumber, fine, _name, _badgeNumber);
    }
    return null;
  }

  // toString method
  @override
  String toString() {
    return 'Officer $_name, Badge No: $_badgeNumber';
  }
}
