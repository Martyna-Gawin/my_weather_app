import 'package:flutter/material.dart';

TextStyle topFont = const TextStyle(
    fontWeight: FontWeight.bold, fontSize: 50, color: Colors.white);
TextStyle detailsFont = const TextStyle(
    fontWeight: FontWeight.bold, fontSize: 17, color: Colors.white);

class TopWidget extends StatelessWidget {
  const TopWidget({
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '10°C',
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
                'Wrocław',
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
                'Bezchmurnie',
                style: detailsFont,
              ),
              const Icon(
                Icons.sunny,
                size: 30,
              )
            ],
          ),
        ],
      ),
    );
  }
}
