import 'package:flutter/material.dart';

import 'dismissibleWidget.dart';

// * Customize list view for cleaning screen (menu)
class ListViewCleaningScreen extends StatefulWidget {
  ListViewCleaningScreen({super.key});

  // TODO will take from DB
  final List<int> items = List<int>.generate(30, (int index) => index);

  List<int> getList() {
    return items;
  }

  @override
  State<ListViewCleaningScreen> createState() => _ListViewCleaningScreen();
}

class _ListViewCleaningScreen extends State<ListViewCleaningScreen> {
  ListViewCleaningScreen list = ListViewCleaningScreen();

  @override
  Widget build(BuildContext context) {
    return ReorderableListView(
        // * 5 rooms on the screen
        // ! Doesn't work!
        padding: (const EdgeInsets.symmetric(vertical: 5)),
        // TODO List.generator will be replaced
        children: List.generate(
          list.getList().length,
          (index) => ListTile(
            key: Key("$index"),
            title: Text("Example ${list.getList()[index]}"),
            trailing: const Icon(Icons.drag_handle_sharp),
          ),
        ),
        // * Logic for reorder list
        onReorder: (int oldIndex, int newIndex) {
          setState(() {
            if (oldIndex < newIndex) {
              newIndex -= 1;
            }
            final int item = list.getList().removeAt(oldIndex);
            list.getList().insert((newIndex), item);
          });
        });
  }
}
