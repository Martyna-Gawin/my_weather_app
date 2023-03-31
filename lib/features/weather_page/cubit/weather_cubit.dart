import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:my_weather_app/models/weather_model.dart';
import 'package:my_weather_app/repositories/weather_repository.dart';

part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit(this._weatherRepository)
      : super(
          WeatherState(
            documents: [],
            isLoading: false,
            errorMessage: '',
          ),
        );
  final WeatherRepository _weatherRepository;

  Future<void> getWeatherModel() async {
    emit(
      WeatherState(
        documents: [],
        isLoading: true,
        errorMessage: '',
      ),
    );
    emit(
      WeatherState(
        documents: [],
        isLoading: false,
        errorMessage: '',
      ),
    );
  }
}
