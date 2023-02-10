import 'package:flutter/material.dart';

class Card_Widget extends StatelessWidget {
  const Card_Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card'),
      ),
      body: Center(
        child: Card(
          elevation: 20,
          color: Colors.amber,
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 10,
                ),
                Text('This Is Card Widget'),
                SizedBox(
                  height: 10,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('Close'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
