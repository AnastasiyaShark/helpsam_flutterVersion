import 'package:flutter/material.dart';
import 'elevatedButtonMineScreen.dart';
import 'package:firebase_core/firebase_core.dart';

// * - INFO comment
// ! - WARN comment
// TODO - TODO comment

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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