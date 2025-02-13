class ParkedCar {
  final String _make;
  final String _model;
  final String _color;
  final String _licenseNumber;
  final int _minutesParked;

  ParkedCar(this._make, this._model, this._color, this._licenseNumber, this._minutesParked);

  String get make => _make;
  String get model => _model;
  String get color => _color;
  String get licenseNumber => _licenseNumber;
  int get minutesParked => _minutesParked;

  @override
  String toString() {
    return 'Car: $_make $_model ($_color), License: $_licenseNumber, Parked for: $_minutesParked minutes';
  }
}
