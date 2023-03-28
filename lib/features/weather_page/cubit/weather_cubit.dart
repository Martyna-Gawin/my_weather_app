import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit()
      : super(
          WeatherState(
            documents: [],
            isLoading: false,
            errorMessage: '',
          ),
        );
  Future<void> start() async {
    emit(
      WeatherState(
        documents: [],
        isLoading: true,
        errorMessage: '',
      ),
    );
  }
}
