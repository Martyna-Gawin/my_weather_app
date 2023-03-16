import 'package:flutter/material.dart';
import 'package:my_weather_app/widgets/top_widget.dart';
import 'package:my_weather_app/widgets/widget_details.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/world.jpg'),
              fit: BoxFit.cover,
              opacity: 0.7),
        ),
        child: SafeArea(
          child: Column(
            children: const [
              TopWidget(),
              WeatherDetails(),
            ],
          ),
        ),
      ),
    );
  }
}
