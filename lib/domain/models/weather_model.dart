class WeatherModel {
  WeatherModel({
    required this.temperature,
    required this.city,
    required this.wind,
    required this.humidity,
    required this.pressure,
    required this.feelslike,
  });

  final double temperature;
  final String city;
  final double wind;
  final String humidity;
  final double pressure;
  final double feelslike;
}
