import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_weather_app/domain/repositories/weather_repository.dart';
import 'package:my_weather_app/features/home/cubit/home_cubit.dart';
import 'package:my_weather_app/features/search_page/pages/search_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(
        WeatherRepository(),
      ),
      child: BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
        return MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: SearchPage(),
        );
      }),
    );
  }
}
