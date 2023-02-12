// ignore_for_file: unnecessary_new, prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_local_variable, no_logic_in_create_state

import 'package:flutter/material.dart';

class MyApp1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
   return(MyState());
  }
}

class Student{
  String id ="";
  String name ="";
  Student({required this.id, required this.name});
}

class MyState extends State<MyApp1> {

  List <DataRow> getRows() {
    List <DataRow> rows = [];
    Student s1 = new Student(id: "1", name: "Rafat");
    Student s2 = new Student(id: "2", name: "Rohit");
    DataRow d1 = new DataRow(cells: [DataCell(Text(s1.id)),DataCell(Text(s1.name))]);
    DataRow d2 = new DataRow(cells: [DataCell(Text(s2.id)),DataCell(Text(s2.name))]);
    rows.add(d1);
    rows.add(d2);
    return rows;
  }

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: DataTable(columns: [
            DataColumn(label: Text("id"),numeric: true),
            DataColumn(label: Text("name"))
          ],rows: getRows(),),
          appBar: AppBar(
          title: const Text("Dynamic Table"),
        ))));
  }
}
