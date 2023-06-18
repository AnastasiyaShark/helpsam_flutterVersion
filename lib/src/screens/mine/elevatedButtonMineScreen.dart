import 'package:flutter/material.dart';

import '../menu/menu.dart';

// * Customize buttons for menu screen
class ElevatedButtonMainScreen extends StatefulWidget {
  const ElevatedButtonMainScreen({super.key});

  @override
  State<ElevatedButtonMainScreen> createState() => _ElevatedButtonMainScreen();
}

class _ElevatedButtonMainScreen extends State<ElevatedButtonMainScreen>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )
    ..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.elasticOut,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
          RotationTransition(
            turns: _animation,

            child: Image.asset(
                'assets/images/letter-s.png', height: 175, width: 175),),
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
