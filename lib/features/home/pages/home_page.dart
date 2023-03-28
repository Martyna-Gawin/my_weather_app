import 'package:flutter/material.dart';
import 'package:my_weather_app/features/home/cubit/home_cubit.dart';
import 'package:my_weather_app/features/weather_page/pages/weather_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit()..start(),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          if (state.errorMessage.isNotEmpty) {
            return Center(
              child: Text(
                'Coś poszło nie tak: ${state.errorMessage}',
              ),
            );
          }
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return Scaffold(
            appBar: AppBar(
              title: const Text('My Weather App'),
              backgroundColor: Color.fromARGB(255, 213, 205, 130),
              centerTitle: true,
            ),
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
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15.0),
                          ),
                        ),
                        label: Text('City'),
                        labelStyle:
                            TextStyle(fontSize: 17, color: Colors.white),
                        hintText: 'Warszawa',
                        hintStyle: TextStyle(fontSize: 17, color: Colors.white),
                      ),
                    ),
                  ),
                  Center(
                    child: ElevatedButton(
                      child: const Text('Get'),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => const WeatherPage(),
                          ),
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(255, 213, 205, 130),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
