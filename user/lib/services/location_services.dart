// ignore_for_file: avoid_print, unnecessary_null_comparison

import 'dart:async';

import 'package:app/exports.dart';
import 'package:flutter/cupertino.dart';
import 'package:location/location.dart';

class LocationService with ChangeNotifier {
  late UserLocation _currentLocation;
  Location location = Location();

  final StreamController<UserLocation> _locationController =
      StreamController<UserLocation>.broadcast();

  LocationService() {
    location.requestPermission().then((granted) {
      if (granted == PermissionStatus.granted) {
        location.onLocationChanged.listen((locationData) {
          if (locationData != null) {
            _locationController.add(UserLocation(
              latitude: locationData.latitude!,
              longitude: locationData.longitude!,
            ));
          }
        });
      }
    });
  }

  Stream<UserLocation> get locationStream => _locationController.stream;

  Future<UserLocation> getLocation() async {
    try {
      var userLocation = await location.getLocation();
      _currentLocation = UserLocation(
        latitude: userLocation.latitude!,
        longitude: userLocation.longitude!,
      );
      lat = userLocation.latitude;
      lon = userLocation.longitude;
    } catch (e) {
      print('Could not get the location: $e');
    }

    return _currentLocation;
  }
}
