part of 'home_screen_bloc.dart';

@freezed
class HomeScreenState with _$HomeScreenState {
  const factory HomeScreenState.initial({
    String? weather,
    String? name,
    double? temp,
    double? feelsLike,
    int? humidity,
    int? visibility,
    int? pressure,
    double? maxTemp,
    String? errorMsg,
    required bool searchVisibility,
  }) = _Initial;
}
