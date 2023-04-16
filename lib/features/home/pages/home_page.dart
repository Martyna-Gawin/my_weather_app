import 'package:flutter/material.dart';
import 'package:my_weather_app/features/weather_page/pages/weather_page.dart';

class HomePage extends StatelessWidget {
  HomePage({
    Key? key,
  }) : super(key: key);

  final _controler = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'My Weather App',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: _controler,
                  cursorColor: Colors.white,
                  decoration: const InputDecoration(
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
                    labelStyle: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                    ),
                    hintText: 'Warszawa',
                    hintStyle: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: ElevatedButton(
                  child: const Text('Get',
                      style: TextStyle(color: Color.fromARGB(255, 66, 64, 62))),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => const WeatherPage(),
                      ),
                    );
                    //context
                    //.read<WeatherCubit>()
                    // .getWeatherModel(city: _controler.text);
                    // _controler.clear();
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 250, 249, 249),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
