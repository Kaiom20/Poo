import 'package:flutter/material.dart';

void main() {
  MaterialApp app = MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.amber
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("Meu App")),
        body: Center(
          child: Column(
            children: [
              Text(
                "Apenas começando",
                style: TextStyle(fontWeight: FontWeight.bold)
                ),
              Text(
                "No meio",
                style: TextStyle(fontStyle: FontStyle.italic)
                ),
              Text("Terminando")
            ]
          )
        ),
        bottomNavigationBar: Row(
            children: [
              ElevatedButton(
                child: const Text("Botão 1"),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.amber,
                  onPrimary: Colors.black,
                )
              ),
              ElevatedButton(
                child: const Text("Botão 2"),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.amber,
                  onPrimary: Colors.black,
                )
              ),
              ElevatedButton(
                child: const Text("Botão 3"),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.amber,
                  onPrimary: Colors.black,
                )
              ) 
            ]
          )
      ));
  runApp(app);
}