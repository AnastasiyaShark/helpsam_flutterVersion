import 'package:flutter/material.dart';
import 'package:helpsam_flutter_version/src/screens/cleaning/widgets/dismissibleWidget.dart';
import 'package:helpsam_flutter_version/src/screens/cleaning/widgets/listViewCleaningScreen.dart';

class Cleaning extends StatelessWidget {
  const Cleaning({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: ListViewCleaningScreen(),
          bottomNavigationBar: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                  label: 'Add',
                  icon: Icon(
                    Icons.add,
                    color: Colors.black,
                    size: 25.0,
                  )),
              BottomNavigationBarItem(
                  label: 'Edit',
                  icon: Icon(
                    Icons.edit,
                    color: Colors.black,
                    size: 25.0,
                  )),
              BottomNavigationBarItem(
                  label: 'Delete',
                  icon: Icon(
                    Icons.delete,
                    color: Colors.black,
                    size: 25.0,
                  )),
            ],
          ),
        ));
  }
}
