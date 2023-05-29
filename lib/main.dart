import 'package:flutter/material.dart';

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
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: const ElevatedButtonMainScreen(),
          // body:  Center(
          //   child: Column(
          //     children: <Widget>[
          //       ElevatedButton(
          //         child: const Text('RaisedButton with custom disabled colors'),
          //         onPressed:(){},
          //       ),
          //       const ElevatedButton(
          //         onPressed: null,
          //         child: Text('RaisedButton with custom disabled colors'),
          //       ),
          //     ],
          //   ),
          // ),
          bottomNavigationBar: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                  label: 'Home',
                  icon: Icon(
                    Icons.home,
                    color: Colors.black,
                    size: 35.0,
                  )),
              BottomNavigationBarItem(
                  label: 'Add',
                  icon: Icon(
                    Icons.add,
                    color: Colors.black,
                    size: 35.0,
                  )),
              BottomNavigationBarItem(
                  label: 'List',
                  icon: Icon(
                    Icons.list,
                    color: Colors.black,
                    size: 35.0,
                  )),
            ],
          ),
        ));
  }
}

// * Customize buttons start
class ElevatedButtonMainScreen extends StatefulWidget {
  const ElevatedButtonMainScreen({super.key});

  @override
  State<ElevatedButtonMainScreen> createState() => _ElevatedButtonMainScreenState();
}


class _ElevatedButtonMainScreenState extends State<ElevatedButtonMainScreen> {
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
          const SizedBox(height: 30),
          ElevatedButton(
            style: style,
            onPressed: () {},
            child: const Text('Cleaning', style: TextStyle(fontSize: 20)),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            style: style,
            onPressed: () {},
            child: const Text('Shopping', style: TextStyle(fontSize: 20)),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            style: style,
            onPressed: () {},
            child: const Text('Training', style: TextStyle(fontSize: 20)),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            style: style,
            onPressed: () {},
            child: const Text('Important dates', style: TextStyle(fontSize: 20)),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            style: style,
            onPressed: () {},
            child: const Text('Motivation', style: TextStyle(fontSize: 20)),
          ),
        ],
      ),
    );
  }
}
// * Customize buttons end



class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
