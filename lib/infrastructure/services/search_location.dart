import 'package:geocoding/geocoding.dart';
import 'package:sky_view_weather_app/core/config/api_endpoints.dart';

class CoordinatesFromName {
  static Future setCoordinates({required query}) async {
    List<Location> locations = await locationFromAddress(query);
    ApiEndPoints.currentLatitude = locations[0].latitude.toString();
    ApiEndPoints.currentLongitude = locations[0].longitude.toString();
  }
}
