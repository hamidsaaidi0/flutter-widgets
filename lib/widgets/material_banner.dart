import 'package:flutter/material.dart';

class Material_Banner extends StatelessWidget {
  const Material_Banner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material Banner Widget'),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Open'),
              onPressed: () {
                ScaffoldMessenger.of(context).showMaterialBanner(
                  MaterialBanner(
                    padding: const EdgeInsets.all(20),
                    leading: const Icon(Icons.notifications_active_outlined),
                    content: const Text('Subscribe!'),
                    actions: [
                      TextButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context)
                                .hideCurrentMaterialBanner();
                          },
                          child: Text('Dismiss'))
                    ],
                  ),
                );
              },
            ),
            SizedBox(
              width: 15,
            ),
            ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                },
                child: Text('Close'))
          ],
        ),
      ),
    );
  }
}
