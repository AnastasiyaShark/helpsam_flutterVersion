import 'package:flutter/material.dart';
import 'elevatedButtonMineScreen.dart';

// * - INFO comment
// ! - WARN comment
// TODO - TODO comment

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body:  ElevatedButtonMainScreen(),
        )
    );
  }
}