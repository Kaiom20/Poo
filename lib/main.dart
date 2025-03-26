import 'package:flutter/material.dart';

void main() {
  MaterialApp app = MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.amber,
        fontFamily: "Tektur"
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
              Image.network('https://i.postimg.cc/4dDF24P4/imagem-2025-03-26-135052773.png'),
            ]
          )
        ),
        bottomNavigationBar: Row(
            children: [
              Expanded(
                child: IconButton(
                  iconSize: 30,
                  icon: Icon(Icons.house),
                  onPressed: () {},
                )
              ),
              Expanded(
                child: ElevatedButton(
                child: const Text("Botão 2"),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  foregroundColor: Colors.black,
                )
              )
              ),
              Expanded(
                child: ElevatedButton(
                child: const Text("Botão 3"),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  foregroundColor: Colors.black,
                )
              )
              ),
              
            ]
          )
      ));
  runApp(app);
}