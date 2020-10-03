//time consuming method async programming
import 'package:geolocator/geolocator.dart';

class Location {
  double latitude;
  double longitude;

  void getCurrentLocation() async {
    try {
      Position position =
          await getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      latitude = position.latitude;
      longitude = position.longitude;
      print('getData(): $position');
    } on Exception catch (e) {
      // TODO
      print('exception: $e');
    }
  }
}
