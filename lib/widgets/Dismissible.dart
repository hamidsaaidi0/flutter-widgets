import 'package:flutter/material.dart';

class Dismissible_Widget extends StatefulWidget {
  const Dismissible_Widget({Key? key}) : super(key: key);

  @override
  State<Dismissible_Widget> createState() => _Dismissible_WidgetState();
}

class _Dismissible_WidgetState extends State<Dismissible_Widget> {
  List<int> items = List<int>.generate(50, (index) => index);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dismissible'),
      ),
      body: ListView.builder(
          itemCount: items.length,
          padding: EdgeInsets.symmetric(vertical: 20.0),
          itemBuilder: (BuildContext context, int index) {
            return Dismissible(
              key: ValueKey<int>(items[index]),
              background: Container(
                color: Colors.red,
                child: Icon(
                  Icons.delete,
                  color: Colors.white,
                ),
              ),
              onDismissed: (DismissDirection direction) {
                setState(() {
                  items.removeAt(index);
                });
              },
              child: ListTile(
                title: Text('Item ${items[index]}'),
              ),
            );
          }),
    );
  }
}
