class ParkingMeter {
  final int _minutesPurchased;

  ParkingMeter(this._minutesPurchased);

  int get minutesPurchased => _minutesPurchased;

  @override
  String toString() {
    return 'Parking Meter: $_minutesPurchased minutes purchased';
  }
}
