import 'package:flutter/material.dart';

void main() {

  MaterialApp app = MaterialApp(

      theme: ThemeData(primarySwatch: Colors.deepPurple),

      home: Scaffold(

        appBar: AppBar(title: Text("Cervejas")),

        body: Scrollbar(
          thumbVisibility: true,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              columns: [
                DataColumn(label: Text('Nome')),
                DataColumn(label: Text('Estilo')),
                DataColumn(label: Text('IBU')),
                DataColumn(label: Text('IBU')),
                DataColumn(label: Text('IBU')),
                DataColumn(label: Text('IBU')),
                DataColumn(label: Text('IBU')),
                DataColumn(label: Text('IBU')),
                DataColumn(label: Text('IBU')),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text('La Fin Du Monde')),
                  DataCell(Text('Bock')),
                  DataCell(Text('65')),
                  DataCell(Text('65')),
                  DataCell(Text('65')),
                  DataCell(Text('65')),
                  DataCell(Text('65')),
                  DataCell(Text('65')),
                  DataCell(Text('65')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Sapporo Premium')),
                  DataCell(Text('Sour Ale')),
                  DataCell(Text('54')),
                  DataCell(Text('54')),
                  DataCell(Text('54')),
                  DataCell(Text('54')),
                  DataCell(Text('54')),
                  DataCell(Text('54')),
                  DataCell(Text('54')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Duvel')),
                  DataCell(Text('Pilsner')),
                  DataCell(Text('82')),
                  DataCell(Text('82')),
                  DataCell(Text('82')),
                  DataCell(Text('82')),
                  DataCell(Text('82')),
                  DataCell(Text('82')),
                  DataCell(Text('82')),
                ]),
              ],
            ),
          ),
        ),

        bottomNavigationBar: Text("Botão 1"),

      ));

  runApp(app);

}