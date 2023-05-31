import 'package:flutter/material.dart';

import '../menu/menu.dart';

// * Customize buttons for menu screen
class ElevatedButtonMainScreen extends StatefulWidget {
  const ElevatedButtonMainScreen({super.key});

  @override
  State<ElevatedButtonMainScreen> createState() => _ElevatedButtonMainScreen();
}

class _ElevatedButtonMainScreen extends State<ElevatedButtonMainScreen> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
        foregroundColor: Colors.black,
        // Text Color (Foreground color)
        backgroundColor: Colors.white,
        fixedSize: const Size(250, 55),
        shadowColor: Colors.black,
        // Shadow Color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
          side: const BorderSide(color: Colors.black, width: 2),
        ));
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Image.asset('assets/images/letter-s.png', height: 175, width: 175),
          const SizedBox(height: 50),
          ElevatedButton(
            style: style,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MyApp(),
                ),
              );
            },
            child: const Text('Hi', style: TextStyle(fontSize: 20)),
          ),
        ],
      ),
    );
  }
}
