import 'package:dio/dio.dart';
import 'package:my_weather_app/domain/models/weather_model.dart';

class WeatherRepository {
  Future<WeatherModel?> getWeatherModel({
    required String city,
  }) async {
    final response = await Dio().get<Map<String, dynamic>>(
        'http://api.weatherapi.com/v1/current.json?key=af7ddf52bdaf41a78f2173809231202&q=$city&aqi=no');
    final responseData = response.data;
    if (responseData == null) {
      return null;
    }
    final name = responseData['location']['name'] as String;
    final temperature = (responseData['current']['temp_c'] + 0.0) as double;
    final wind = (responseData['current']['wind_kph'] + 0.0) as double;
    final humidity = (responseData['current']['humidity'] as int).toString();
    final pressure = (responseData['current']['pressure_mb'] + 0.0) as double;
    final feelslike = (responseData['current']['feelslike_c'] + 0.0) as double;
    return WeatherModel(
      city: name,
      temperature: temperature,
      wind: wind,
      humidity: humidity,
      pressure: pressure,
      feelslike: feelslike,
    );
  }
}
