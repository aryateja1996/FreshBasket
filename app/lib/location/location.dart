import 'dart:async';


import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:provider/provider.dart';
class LocationService {
  late UserLocation _currentLocation;
  var location = Location();
  Future<UserLocation> getLocation() async {
    try {
      var userLocation = await location.getLocation();
      _currentLocation = UserLocation(userLocation.latitude, userLocation.longitude);
    } on Exception catch (e) {
      print('Could not get location: ${e.toString()}');
    }
    return _currentLocation;
  }
  
  final StreamController<UserLocation> _locationController =
      StreamController<UserLocation>();
  Stream<UserLocation> get locationStream => _locationController.stream;
  LocationService() {
    // Request permission to use location
    location.requestPermission().then((granted) {
      if (granted == PermissionStatus.GRANTED) {
        // If granted listen to the onLocationChanged stream and emit over our controller
        location.onLocationChanged().listen((locationData) {
          if (locationData != null) {
            _locationController.add(UserLocation(
              locationData.latitude,
              locationData.longitude,
            ));
          }
        });
      }
    });
  }
}

class UserLocation {
  final double latitude;
  final double longitude;
  UserLocation(this.latitude,this.longitude);
}

class HomeView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var userLocation = Provider.of<UserLocation>(context);
    return Center(
      child: Text(
          'Location: Lat${userLocation.latitude}, Long: ${userLocation.longitude}'),
    );
  }
}