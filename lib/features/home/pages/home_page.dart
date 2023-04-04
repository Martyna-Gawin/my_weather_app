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
        appBar: AppBar(
          title: const Text('My Weather App'),
          backgroundColor: const Color.fromARGB(255, 213, 205, 130),
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
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  controller: _controler,
                  cursorColor: Colors.black,
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
                    labelStyle: TextStyle(fontSize: 17, color: Colors.white),
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
        ),);
  }
}
