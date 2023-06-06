import 'package:flutter/material.dart';
import 'package:my_weather_app/app/core/enums.dart';
import 'package:my_weather_app/features/home/cubit/home_cubit.dart';
import 'package:my_weather_app/widgets/top_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_weather_app/widgets/widget_details.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state.status == Status.error) {
          final errorMessage = state.errorMessage ?? 'Something went wrong';
          Text(errorMessage);
        }
        if (state.status == Status.loading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        final weatherModel = state.model;

        return Scaffold(
          body: Container(
            constraints: const BoxConstraints.expand(),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const AssetImage("images/sky.png"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(1.0),
                  BlendMode.dst,
                ),
              ),
            ),
            child: SafeArea(
              child: Column(
                children: [
                  if (weatherModel != null) ...[
                    TopWidget(weatherModel: weatherModel),
                    WeatherDetails(weatherModel: weatherModel),
                  ]
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
