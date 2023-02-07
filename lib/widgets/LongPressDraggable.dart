import 'package:flutter/material.dart';

class Long_PressDraggable extends StatefulWidget {
  const Long_PressDraggable({Key? key}) : super(key: key);

  @override
  State<Long_PressDraggable> createState() => _Long_PressDraggableState();
}

class _Long_PressDraggableState extends State<Long_PressDraggable> {
  final List<int> items = List<int>.generate(30, (index) => index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LongPressDraggable'),
      ),
      body: ReorderableListView(
        children: List.generate(
          items.length,
          (index) => ListTile(
            key: Key('$index'),
            tileColor:
                items[index].isOdd ? Colors.lightBlueAccent : Colors.blueGrey,
            title: Text('Item ${items[index]}'),
            trailing: Icon(
              Icons.drag_handle_sharp,
              color: Colors.lightBlue,
            ),
          ),
        ),
        onReorder: (int oldIndex, int newIndex) => {
          setState(
            () {
              if (oldIndex < newIndex) {
                newIndex -= 1;
              }
              final int item = items.removeAt(oldIndex);
              items.insert(newIndex, item);
            },
          ),
        },
      ),
    );
  }
}
