import 'package:flutter/material.dart';

class Circle_Avatar extends StatelessWidget {
  const Circle_Avatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CircleAvatar'),
      ),
      body: Center(
        child: CircleAvatar(
          backgroundImage: AssetImage('assets/img/testimg.jpg'),
          radius: 70,
          child: Text('hello'),
        ),
      ),
    );
  }
}
