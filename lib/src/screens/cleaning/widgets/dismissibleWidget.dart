
import 'package:flutter/material.dart';

import 'listViewCleaningScreen.dart';

class DismissibleWidget extends StatefulWidget {
  const DismissibleWidget({super.key});

  @override
  State<DismissibleWidget> createState() => _DismissibleWidget();
}

class _DismissibleWidget extends State<DismissibleWidget> {
  ListViewCleaningScreen list = ListViewCleaningScreen();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: list.getList().length,
        itemBuilder: (BuildContext context, int index) {
          return Dismissible(
            background: Container(
              color: Colors.black26,
              child: const Icon(Icons.delete),
            ),
            key: ValueKey<int>(list.getList()[index]),
            onDismissed: (DismissDirection direction) {
              setState(() {
                list.getList().removeAt(index);
              });
            },
            child: ListTile(
              title: Text("Example ${list.getList()[index]}"),
            ),
          );
        });
  }
}
