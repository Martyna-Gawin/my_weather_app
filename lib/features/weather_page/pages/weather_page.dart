import 'package:flutter/material.dart';
import 'package:my_weather_app/features/weather_page/cubit/weather_cubit.dart';
import 'package:my_weather_app/repositories/weather_repository.dart';
import 'package:my_weather_app/widgets/top_widget.dart';
import 'package:my_weather_app/widgets/widget_details.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WeatherCubit(WeatherRepository()),
      child: BlocBuilder<WeatherCubit, WeatherState>(
        builder: (context, state) {
          if (state.errorMessage.isNotEmpty) {
            return const Center(
              child: Text(
                'Coś poszło nie tak',
              ),
            );
          }
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          final documents = state.documents;

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
        },
      ),
    );
  }
}
