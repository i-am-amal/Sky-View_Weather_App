part of 'splash_screen_bloc.dart';

@freezed
class SplashScreenState with _$SplashScreenState {
  const factory SplashScreenState.initial({
    double? currentLatitude,
    double? currentLongitude,
    String? errorMsg,
  }) = _Initial;
}
