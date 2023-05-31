import 'package:flutter/material.dart';
import 'package:helpsam_flutter_version/src/screens/menu/widgets/elevatedButtonMenuScreen.dart';

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
          // bottomNavigationBar: BottomNavigationBar(
          //   items: const [
          //     BottomNavigationBarItem(
          //         label: 'Home',
          //         icon: Icon(
          //           Icons.home,
          //           color: Colors.black,
          //           size: 35.0,
          //         )),
          //     BottomNavigationBarItem(
          //         label: 'Add',
          //         icon: Icon(
          //           Icons.add,
          //           color: Colors.black,
          //           size: 35.0,
          //         )),
          //     BottomNavigationBarItem(
          //         label: 'List',
          //         icon: Icon(
          //           Icons.list,
          //           color: Colors.black,
          //           size: 35.0,
          //         )),
          //   ],
          // ),
        )
    );
  }
}