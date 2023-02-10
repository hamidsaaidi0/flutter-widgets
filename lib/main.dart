import 'package:bestwidgets/screens/login_screen.dart';
import 'package:bestwidgets/widgets/AlertDialog.dart';
import 'package:bestwidgets/widgets/AnimatedContainer.dart';
import 'package:bestwidgets/widgets/CircleAvatar.dart';
import 'package:bestwidgets/widgets/CupertinoContextMenu.dart';
import 'package:bestwidgets/widgets/Dismissible.dart';
import 'package:bestwidgets/widgets/LongPressDraggable.dart';
import 'package:bestwidgets/widgets/about_dialog.dart';
import 'package:bestwidgets/widgets/bottom_sheet.dart';
import 'package:bestwidgets/widgets/card.dart';
import 'package:bestwidgets/widgets/checkbox_list_tile.dart';
import 'package:bestwidgets/widgets/material_banner.dart';
import 'package:bestwidgets/widgets/preferredsize.dart';
import 'package:bestwidgets/widgets/table.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Widgets',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Login_Screen(),
    );
  }
}
