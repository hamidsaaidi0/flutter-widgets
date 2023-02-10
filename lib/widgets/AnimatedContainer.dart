import 'package:flutter/material.dart';

class Animated_Container extends StatefulWidget {
  const Animated_Container({Key? key}) : super(key: key);

  @override
  State<Animated_Container> createState() => _Animated_ContainerState();
}

class _Animated_ContainerState extends State<Animated_Container> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedContainer'),
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            selected = !selected;
          });
        },
        child: Center(
          child: AnimatedContainer(
            height: selected ? 100.0 : 200.0,
            width: selected ? 200.0 : 100.0,
            color: selected ? Colors.lightBlue : Colors.blueGrey,
            alignment:
                selected ? Alignment.center : AlignmentDirectional.topCenter,
            curve: Curves.fastOutSlowIn,
            duration: Duration(seconds: 2),
            child: Image.asset('assets/img/youtube.png'),
          ),
        ),
      ),
    );
  }
}
