import 'package:flutter/material.dart';

TextStyle titleFont = const TextStyle(
    fontWeight: FontWeight.bold, fontSize: 22, color: Colors.white);

TextStyle detailsFont = const TextStyle(
    fontWeight: FontWeight.bold, fontSize: 17, color: Colors.white);

class WeatherDetails extends StatelessWidget {
  const WeatherDetails({
    Key? key,
  }) : super(key: key);

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
          Center(
            child: Text(
              'Additional Information',
              style: titleFont,
            ),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Wind',
                style: detailsFont,
              ),
              Text(
                '2545',
                style: detailsFont,
              ),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Humidity',
                style: detailsFont,
              ),
              Text(
                '6,5',
                style: detailsFont,
              ),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Pressure',
                style: detailsFont,
              ),
              Text(
                '1000',
                style: detailsFont,
              ),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Feels like',
                style: detailsFont,
              ),
              Text(
                '14',
                style: detailsFont,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
