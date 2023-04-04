import 'package:my_weather_app/domain/models/weather_model.dart';

class WeatherRepository {
  Future<WeatherModel?> getWeatherModel({
    required String city,
  }) async {
    return WeatherModel(temperature: 10, city: 'Warszawa');
  }
}
