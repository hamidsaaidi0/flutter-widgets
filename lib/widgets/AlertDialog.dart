import 'package:flutter/material.dart';

class Alert_Dialog extends StatelessWidget {
  const Alert_Dialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AlertDailog'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Show Alert Dialog'),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('Close'))
                ],
                title: Text('Alert Dialog Title'),
                contentPadding: EdgeInsets.all(20.0),
                content: Text('This Is Content Dialog'),
              ),
            );
          },
        ),
      ),
    );
  }
}
