// ignore_for_file: no_logic_in_create_state, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';


class MyApp2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (MyState());
  }
}

class Student {
  String id = "";
  String name = "";
  Student({required this.id, required this.name});
}

List<Student> getStudents() {
  List<Student> students = [];
  Student s1 = new Student(id: "218", name: "Rafat");
  Student s2 = new Student(id: "213", name: "Rohit");
  students.add(s1);
  students.add(s2);
  return students;
}

List<DataRow> getRows1() {
  List<DataRow> rows = [];
  List<Student> studs = getStudents();

  for (var i in studs) {
     rows.add(DataRow(
        cells: [DataCell(Text(i.id)), DataCell(Text(i.name))]));
  }

  // for (int i = 0; i < studs.length; i++) {
  //   rows.add(DataRow(
  //       cells: [DataCell(Text(studs[i].id)), DataCell(Text(studs[i].name))]));
  // }
  return rows;
}

class MyState extends State<MyApp2> {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        body: DataTable(
          columns: [
            DataColumn(label: Text("ID"), numeric: true),
            DataColumn(label: Text("Name"))
          ],
          rows: getRows1(),
        ),
        appBar: AppBar(
          title: const Text("Dynamic Table"),
        ),
      ),
    ));
  }
}
