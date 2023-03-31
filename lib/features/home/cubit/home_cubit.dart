import 'package:bloc/bloc.dart';
import 'package:flutter/gestures.dart';
import 'package:my_weather_app/repositories/weather_repository.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._weatherRepository)
      : super(const HomeState(
          isLoading: true,
          errorMessage: '',
        ));

  final WeatherRepository _weatherRepository;

  Future<void> getWeatherModel({
    required String city,
  }) async {
    emit(
      const HomeState(
        isLoading: true,
        errorMessage: '',
      ),
    );

    emit(
      const HomeState(
        isLoading: false,
        errorMessage: '',
      ),
    );
  }
}
