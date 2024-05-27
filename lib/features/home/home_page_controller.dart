import 'dart:ffi';

import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:location/location.dart' as loc;

class HomeController extends GetxController {
  List name = ["Nandini Mittal", "Supriya Shrivastava"];
  List course = ["Flutter Intern", "Java Intern", "Python Intern"];

  Rx<Position> position = Position(longitude: 0, latitude: 0, timestamp: DateTime.now(), accuracy: 0, altitude: 0, heading: 0, speed: 0, speedAccuracy: 0, altitudeAccuracy: 1.0, headingAccuracy:1.0).obs;

  Future<void> getCurrentPosition() async {
    try {
      Position newPosition = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
      position.value = newPosition;
    } catch (e) {
      print(e);
    }
  }



  // Rx<loc.LocationData> locationData = loc.LocationData().obs;
  // Rx<List<Placemark>> placemarks = <Placemark>[].obs;
  //
  // void onReady() {
  //   locationService();
  //   super.onReady();
  // }
  //
  // Future<void> locationService() async {
  //   loc.Location location = loc.Location();
  //
  //   loc.PermissionStatus _permissionLocation;
  //   loc.LocationData _locdata;
  //
  //   bool _serviceEnabled = await location.serviceEnabled();
  //   if (_serviceEnabled) {
  //     _serviceEnabled = await location.requestService();
  //   }
  //   if (!_serviceEnabled) {
  //     return;
  //   }
  //
  //   _permissionLocation = await location.hasPermission();
  //   if (_permissionLocation != loc.PermissionStatus.denied) {
  //     _permissionLocation = await location.requestPermission();
  //   }
  //   if (_permissionLocation == loc.PermissionStatus.granted) {
  //     _locdata = loc.LocationData();
  //     _locdata.latitude = 0.0;
  //     _locdata.longitude = 0.0;
  //     _locdata.accuracy = 0.0;
  //     _locdata.altitude = 0.0;
  //     _locdata.heading = 0.0;
  //     _locdata.speed = 0.0;
  //     _locdata.speedAccuracy = 0.0;
  //     _locdata.time = DateTime.now();
  //     locationData.value = _locdata;
  //     getAddressFromCoordinates();
  //   }
  // }
  //
  // Future<void> getAddressFromCoordinates() async {
  //   List<Placemark> placemarksList = await placemarkFromCoordinates(
  //       locationData.value.latitude, locationData.value.longitude);
  //   placemarks.value = placemarksList;
  // }

  // Rx<loc.LocationData> locationData = loc.LocationData().obs;
  // Rx<List<PlaceMark>> placemarks = <Placemark>[].obs as Rx<List<dynamic>>;
  //
  //
  // void onReady(){
  //   locationService();
  //   super.onReady();
  // }
  //
  //
  //
  // Future<void> locationService() async{
  //   loc.Location location = new loc.Location();
  //
  //
  //   loc.PermissionStatus _permissionLocation;
  //   loc.LocationData _locdata;
  //
  //   bool _serviceEnabled = await location.serviceEnabled();
  //   if(_serviceEnabled){
  //     _serviceEnabled = await location.requestService();
  //   }
  //   if(!_serviceEnabled){
  //     return;
  //   }
  //
  //   _permissionLocation = await location.hasPermission();
  //   if(_permissionLocation != loc.PermissionStatus.denied){
  //     _permissionLocation = await location.requestPermission();
  //   }
  //   if(_permissionLocation == loc.PermissionStatus.granted){
  //     _locdata = await location.getLocation();
  //     locationData.value = locationData.value = _locdata;
  //     getAddressFromCoordinates();
  //   }
  //
  //   Future<void> getAddressFromCoordinates() async {
  //     List<Placemark> placemarksList = await placemarkFromCoordinates(
  //         locationData.value.latitude, locationData.value.longitude);
  //     placemarks.value = placemarksList;
  //   }
  //
  //
  //
  //
  //
  // }

}






