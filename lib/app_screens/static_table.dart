// ignore_for_file: use_key_in_widget_constructors, no_logic_in_create_state, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (MyState());
  }
}

class MyState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: DataTable(
          columns: [
            DataColumn(label: Text("ID"), numeric: true),
            DataColumn(label: Text("Name")),
          ],
          rows: [
            DataRow(
                cells: [DataCell(Text("1")), DataCell(Text("Code and Learn"))]),
             DataRow(
                cells: [DataCell(Text("2")), DataCell(Text("Subscribe"))]),
          ],
        ),
        appBar: AppBar(
          title: const Text("Tables"),
        ),
      ),
    ));
  }
}
