import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Osar Tri Sasongko - 6SIA6'),
      ),
      body: ListView(children: <Widget>[
        Center(
            child: Text('Data Mahasiswa',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
        DataTable(
          columns: [
            DataColumn(label: Text('NIRM')),
            DataColumn(label: Text('Nama Mahasiswa')),
            DataColumn(label: Text('Alamat')),
          ],
          rows: [
            DataRow(cells: [
              DataCell(Text('2018020303')),
              DataCell(Text('Osar Tri Sasongko')),
              DataCell(Text('Tanjung Morawa')),
            ]),
            DataRow(cells: [
              DataCell(Text('2018020081')),
              DataCell(Text('Dahyun')),
              DataCell(Text('Lubuk Pakam')),
            ]),
            DataRow(cells: [
              DataCell(Text('2018020620')),
              DataCell(Text('Mina')),
              DataCell(Text('Medan')),
            ]),
          ],
        ),
      ]),
    );
  }
}