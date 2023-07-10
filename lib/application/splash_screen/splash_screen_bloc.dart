import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sky_view_weather_app/core/config/api_endpoints.dart';
import '../../infrastructure/services/gps_services.dart';

part 'splash_screen_event.dart';
part 'splash_screen_state.dart';
part 'splash_screen_bloc.freezed.dart';

class SplashScreenBloc extends Bloc<SplashScreenEvent, SplashScreenState> {
  SplashScreenBloc() : super(const _Initial()) {
    on<FetchDataEvent>(
      (event, emit) async {
        Either<String, Position> results = await GpsServices.getLocation();

        results.fold((failure) {
          emit(state.copyWith(errorMsg: failure));
          emit(state.copyWith(errorMsg: null));
        }, (success) {
          ApiEndPoints.currentLatitude = success.latitude.toString();
          ApiEndPoints.currentLongitude = success.longitude.toString();

          emit(state.copyWith(
              currentLatitude: success.latitude,
              currentLongitude: success.longitude));
        });
      },
    );
  }
}
