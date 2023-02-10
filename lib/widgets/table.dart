import 'package:flutter/material.dart';

class Table_Widget extends StatelessWidget {
  const Table_Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Table'),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Table(
              border: TableBorder.all(color: Colors.lightBlue),
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              children: [
                TableRow(
                  decoration: BoxDecoration(
                    color: Colors.yellowAccent,
                  ),
                  children: [
                    rows('title 1'),
                    rows('title 2'),
                    rows('title 3'),
                  ],
                ),
                ...List.generate(
                    30,
                    (index) => TableRow(children: [
                          rows('cell 1'),
                          rows('cell 2'),
                          rows('cell 3'),
                        ]))
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget rows(String title) => TableCell(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('${title}'),
        ),
      );
}
