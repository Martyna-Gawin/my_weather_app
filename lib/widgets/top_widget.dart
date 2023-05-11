import 'package:flutter/material.dart';
import 'package:my_weather_app/domain/models/weather_model.dart';

TextStyle topFont = const TextStyle(
    fontWeight: FontWeight.bold, fontSize: 50, color: Colors.white);
TextStyle detailsFont = const TextStyle(
    fontWeight: FontWeight.bold, fontSize: 17, color: Colors.white);

class TopWidget extends StatelessWidget {
  const TopWidget({Key? key, required this.weatherModel}) : super(key: key);

  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(32),
      padding: const EdgeInsets.all(32),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        color: Colors.black12,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                weatherModel.temperature.toString(),
                style: topFont,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                weatherModel.city,
                style: topFont,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
