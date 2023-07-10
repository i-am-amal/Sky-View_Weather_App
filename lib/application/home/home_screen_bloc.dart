import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/models/response_model/response_model.dart';
import '../../infrastructure/services/api_services.dart';

part 'home_screen_event.dart';
part 'home_screen_state.dart';
part 'home_screen_bloc.freezed.dart';

class HomeScreenBloc extends Bloc<HomeScreenEvent, HomeScreenState> {
  HomeScreenBloc() : super(const _Initial()) {
    on<FetchHomeDataEvent>((event, emit) async {
      Either<String, ResponseModel> result = await ApiServices.getData();

      result.fold((failureMsg) {
        emit(state.copyWith(errorMsg: failureMsg));
        emit(state.copyWith(errorMsg: null));
      }, (successResult) {

        String weatherData = successResult.weather?[0].description ?? "error";
        String? weatherName = successResult.name;
        double? weatherTemp = successResult.main?.temp ;
        double? weatherFeel = successResult.main?.feelsLike;
        int? weatherHumidity = successResult.main?.humidity;
        int? weatherVisibilty = successResult.visibility ;
        double? weatherMaxTemp = successResult.main?.tempMax;
        int? weatherPressure = successResult.main?.pressure;

        emit(state.copyWith(weather: weatherData,name: weatherName,temp: weatherTemp,feelsLike: weatherFeel,humidity: weatherHumidity,visibility: weatherVisibilty,maxTemp: weatherMaxTemp,pressure: weatherPressure));
    
      });
    });
  }
}