// class ParkingMeter {
//   final int _minutesPurchased;

//   ParkingMeter(this._minutesPurchased);

//   int get minutesPurchased => _minutesPurchased;

//   @override
//   String toString() {
//     return 'Parking Meter: $_minutesPurchased minutes purchased';
//   }
// }

class ParkingMeter {
  // Private instance variable
  int _minutesPurchased;

  // Default constructor
  ParkingMeter.defaultMeter() : _minutesPurchased = 0;

  // Parameterized constructor
  ParkingMeter(this._minutesPurchased);

  // Getter
  int get minutesPurchased => _minutesPurchased;

  // Setter
  set minutesPurchased(int minutes) => _minutesPurchased = minutes;

  // toString method
  @override
  String toString() {
    return 'Parking Meter: $_minutesPurchased minutes purchased';
  }
}
