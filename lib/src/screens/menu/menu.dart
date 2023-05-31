import 'package:flutter/material.dart';
import 'package:helpsam_flutter_version/src/screens/menu/widgets/elevatedButtonMenuScreen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body:  ElevatedButtonMenuScreen(),
        )
    );
  }
}