import 'dart:io';
import 'package:parking_project/parked_car.dart';
import 'package:parking_project/parking_meter.dart';
import 'package:parking_project/parking_ticket.dart';
import 'package:parking_project/police_officer.dart';

void main() {
  print("***WELCOME TO SERGE PARKING TICKET SIMULATOR SYSTEM***");

  // User inputs for the parked car
  stdout.write("Enter car make: ");
  String make = stdin.readLineSync()!;

  stdout.write("Enter car model: ");
  String model = stdin.readLineSync()!;

  stdout.write("Enter car color: ");
  String color = stdin.readLineSync()!;

  stdout.write("Enter car license number: ");
  String license = stdin.readLineSync()!;

  stdout.write("Enter how many minutes the car has been parked: ");
  int minutesParked = int.parse(stdin.readLineSync()!);

  ParkedCar car = ParkedCar(make, model, color, license, minutesParked);

  // User input for parking meter
  stdout.write("Enter the number of minutes purchased on the parking meter: ");
  int minutesPurchased = int.parse(stdin.readLineSync()!);

  ParkingMeter meter = ParkingMeter(minutesPurchased);

  // Creating a police officer
  PoliceOfficer officer = PoliceOfficer("Serge MUNEZA", "20248/2022");

  print("\n Officer ${officer.name} is inspecting the car...");

  // Officer inspects the car and issues a ticket if needed
  ParkingTicket? ticket = officer.inspectCar(car, meter);

  print("\n Car Details: $car");
  print(" Parking Meter: $meter");
  print(" Officer: $officer");

  if (ticket != null) {
    print("\n❌ Parking violation detected! Ticket issued:");
    print(ticket);
  } else {
    print("\n✅ No ticket issued. The car is parked legally."); 
  }
}
