import 'package:flutter/material.dart';

void main() {

  MaterialApp app = MaterialApp(

      theme: ThemeData(primarySwatch: Colors.deepPurple),

      home: Scaffold(

        appBar: AppBar(title: const Text("Cervejas")),

        body: DataTable(
          columns: const [
            DataColumn(label: Text('Nome')),
            DataColumn(label: Text('Estilo')),
            DataColumn(label: Text('IBU'))
          ],
          rows: const [
            DataRow(cells: [
              DataCell(Text('La Fin Du Monde')),
              DataCell(Text('Bock')),
              DataCell(Text('65')),
            ]),
            DataRow(cells: [
              DataCell(Text('Sapporo Premium')),
              DataCell(Text('Sour Ale')),
              DataCell(Text('54')),
            ]),
            DataRow(cells: [
              DataCell(Text('Duvel')),
              DataCell(Text('Pilsner')),
              DataCell(Text('82')),
            ]),
          ],
        ),

        bottomNavigationBar: const Text("Botão 1"),

      ));

  runApp(app);

}