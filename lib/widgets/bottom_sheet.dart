import 'package:flutter/material.dart';

class Bottom_Sheet extends StatelessWidget {
  const Bottom_Sheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BottomSheet'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return SizedBox(
                    height: 400,
                    child: Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('Close BottomSheet'),
                      ),
                    ),
                  );
                });
          },
          child: Text('Open Bottom sheet'),
        ),
      ),
    );
  }
}
