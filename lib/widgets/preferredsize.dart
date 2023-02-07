import 'package:flutter/material.dart';

class Preferred_size extends StatelessWidget {
  const Preferred_size({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: Container(
          height: 120,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.redAccent,
                Colors.orangeAccent,
              ],
            ),
          ),
          child: SafeArea(
            child: Center(
              child: ListTile(
                leading: Icon(
                  Icons.access_alarm,
                  color: Colors.white,
                ),
                title: Text(
                  'App Bar',
                  style: TextStyle(color: Colors.white),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search),
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

//This sample shows a custom widget, similar to an AppBar, which uses a PreferredSize widget,
// with its height set to 80 logical pixels. Changing the PreferredSize can be used to change
// the height of the custom app bar.
