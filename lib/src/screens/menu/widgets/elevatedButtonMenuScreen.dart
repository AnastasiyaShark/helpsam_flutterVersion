import 'package:flutter/material.dart';

import '../../cleaning/cleaning.dart';
import '../../motivation/motivation.dart';


// * Customize buttons for menu screen
class ElevatedButtonMenuScreen extends StatefulWidget {
  const ElevatedButtonMenuScreen({super.key});

  @override
  State<ElevatedButtonMenuScreen> createState() => _ElevatedButtonMenuScreenState();
}


class _ElevatedButtonMenuScreenState extends State<ElevatedButtonMenuScreen> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
    ElevatedButton.styleFrom(
        foregroundColor: Colors.black, // Text Color (Foreground color)
        backgroundColor: Colors.white,
        fixedSize: const Size(250, 55),
        shadowColor: Colors.black, // Shadow Color
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0),
          side: const BorderSide(color: Colors.black, width: 2),

        ));
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Image.asset('assets/images/letter-s.png',
              height: 175,
              width: 175),
          const SizedBox(height: 20),
          ElevatedButton(
            style: style,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Cleaning(),
                ),
              );
            },
            child: const Text('Cleaning', style: TextStyle(fontSize: 20)),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            style: style,
            onPressed: () {},
            child: const Text('Shopping', style: TextStyle(fontSize: 20)),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            style: style,
            onPressed: () {},
            child: const Text('Training', style: TextStyle(fontSize: 20)),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            style: style,
            onPressed: () {},
            child: const Text('Important dates', style: TextStyle(fontSize: 20)),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            style: style,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>  Motivation(),
                ),
              );
            },
            child: const Text('Motivation', style: TextStyle(fontSize: 20)),
          ),
        ],
      ),
    );
  }
}

