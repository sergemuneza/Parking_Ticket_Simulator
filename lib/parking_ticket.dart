class ParkingTicket {
  final String _carMake;
  final String _carModel;
  final String _carColor;
  final String _licenseNumber;
  final double _fine;
  final String _officerName;
  final String _officerBadge;

  ParkingTicket(this._carMake, this._carModel, this._carColor, this._licenseNumber, this._fine, this._officerName, this._officerBadge);

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
