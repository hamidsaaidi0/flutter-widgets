import 'package:flutter/material.dart';

class Checkbox_List_Til extends StatefulWidget {
  @override
  State<Checkbox_List_Til> createState() => _Checkbox_List_TilState();
}

class _Checkbox_List_TilState extends State<Checkbox_List_Til> {
  bool? _ischecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkbox List Tile'),
        centerTitle: true,
      ),
      body: Center(
        child: CheckboxListTile(
          value: _ischecked,
          title: const Text('Checkbox List Tile'),
          onChanged: (bool? newValue) {
            setState(() {
              _ischecked = newValue;
            });
          },
          tileColor: Colors.grey,
          activeColor: Colors.amber,
          checkColor: Colors.white,
          subtitle: Text('This is Subtitle'),
          controlAffinity: ListTileControlAffinity.leading,
          tristate: true,
        ),
      ),
    );
  }
}
