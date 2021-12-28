// ignore_for_file: file_names
import 'package:cloud_firestore/cloud_firestore.dart';

String regEmail = '';
String regAddress = '';
String regName = '';
String regPhone = '';
String regPassword = '';
String logEmail = '';
String logPassword = '';
double? lat;
double? lon;

class UserModel {
  final String name;
  final String phone;
  final String address;
  final double lat;
  final double lon;
  final String email;

  UserModel(
      {required this.name,
      required this.address,
      required this.phone,
      required this.email,
      required this.lat,
      required this.lon});

  factory UserModel.fromDocument(DocumentSnapshot snapshot) {
    Map<String, dynamic>? doc = snapshot.data();
    return UserModel(
        name: doc!['username'],
        address: doc['address'],
        phone: doc['phone'],
        email: doc['email'],
        lat: doc['lat'],
        lon: doc['lon']);
  }
}

class UserLocation {
  final double latitude;
  final double longitude;

  UserLocation({required this.latitude, required this.longitude});
}
