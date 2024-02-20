part of 'home_screen_bloc.dart';

@freezed
class HomeScreenEvent with _$HomeScreenEvent {
  const factory HomeScreenEvent.fetchHomeDataEvent() = FetchHomeDataEvent;

  const factory HomeScreenEvent.changeVisibility() = ChangeVisibility;
  const factory HomeScreenEvent.searchLocation({required String locationName}) =
      SearchLocation;
}
