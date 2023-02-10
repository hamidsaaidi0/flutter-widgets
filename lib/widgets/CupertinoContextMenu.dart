import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cupertino_Context_Menu extends StatelessWidget {
  const Cupertino_Context_Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cupertino Context Menu'),
      ),
      body: Center(
        child: SizedBox(
          height: 150,
          width: 150,
          child: CupertinoContextMenu(
            child: Image.asset('assets/img/youtube.png'),
            actions: [
              CupertinoContextMenuAction(
                child: Text('Action One'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              CupertinoContextMenuAction(
                child: Text('ActionTwo'),
                onPressed: () {
                  Navigator.pop(context);
                },
                trailingIcon: Icons.delete,
                isDestructiveAction: true,
              ),
            ],
            previewBuilder: (context, animation, child) {
              return SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: Image.asset(
                  'assets/img/testimg.jpg',
                  height: 200,
                  width: 300,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
