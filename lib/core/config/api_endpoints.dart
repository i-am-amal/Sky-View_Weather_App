import 'package:sky_view_weather_app/core/config/key.dart';

class ApiEndPoints {
  static String? currentLatitude;
  static String? currentLongitude;
  static String get pathUrl =>
      "https://api.openweathermap.org/data/2.5/weather?lat=$currentLatitude&lon=$currentLongitude&appid=$apiKey&units=metric";
}
