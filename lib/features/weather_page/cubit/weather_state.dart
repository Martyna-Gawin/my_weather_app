part of 'weather_cubit.dart';

class WeatherState {
  WeatherState({
    required this.documents,
    required this.isLoading,
    required this.errorMessage,
  });

  final List documents;
  final bool isLoading;
  final String errorMessage;
}
