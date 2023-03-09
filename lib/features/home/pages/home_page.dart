import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Weather App'),
        backgroundColor: Color.fromARGB(255, 213, 205, 130),
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
        child: ListView(
          children: [
            const Expanded(
              child: Padding(
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
                      labelStyle: TextStyle(fontSize: 17, color: Colors.white),
                      hintText: 'Warszawa',
                      hintStyle: TextStyle(fontSize: 17, color: Colors.white)),
                ),
              ),
            ),
            Center(
              child: ElevatedButton(
                child: const Text('Get'),
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                  const Color.fromARGB(255, 213, 205, 130),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
