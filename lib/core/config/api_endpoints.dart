class ApiEndPoints {
  static const String _apiKey = '6b4419fd8309edc0c177f8f93073510c';

  static String? currentLatitude;
  static String? currentLongitude;

  static String get pathUrl =>
      "https://api.openweathermap.org/data/2.5/weather?lat=$currentLatitude&lon=$currentLongitude&appid=$_apiKey&units=metric";
}
