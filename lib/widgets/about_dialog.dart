import 'package:flutter/material.dart';

class About_Dialog extends StatelessWidget {
  const About_Dialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Dialog Widget'),
      ),
      body: Center(
        child: Row(
          children: [
            ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) => const AboutDialog(
                          applicationIcon: FlutterLogo(),
                          applicationLegalese: 'Legalese',
                          applicationName: 'widgets',
                          applicationVersion: 'version 1.0',
                        ));
              },
              child: Text('Show About Dialog'),
            ),
            SizedBox(
              height: 15,
            ),
            AboutListTile(
              icon: Icon(Icons.info),
              applicationIcon: FlutterLogo(),
              applicationLegalese: 'legalese',
              applicationName: 'widgets',
              applicationVersion: '1.0',
              aboutBoxChildren: [
                Text('This is a Text Created By Flutter Mapp'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
