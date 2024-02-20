import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';
import 'package:sky_view_weather_app/core/config/api_endpoints.dart';
import 'package:sky_view_weather_app/domain/models/response_model/response_model.dart';

class ApiServices {
  static Future<Either<String, ResponseModel>> getData() async {
    try {
      final response = await Dio().get(ApiEndPoints.pathUrl);

      if (response.statusCode == 200 || response.statusCode == 201) {
        ResponseModel weatherObject = ResponseModel.fromJson(response.data);
        return right(weatherObject);
      } else {
        return left("Server side error");
      }
    } catch (e) {
      return left("Client side error");
    }
  }
}
