import 'package:flutter/material.dart';

void main() {

  MaterialApp app = MaterialApp(

      theme: ThemeData(primarySwatch: Colors.deepPurple),

      home: Scaffold(

        appBar: AppBar(title: Text("Bebidas...")),

        body: ListView(
          children: [
            ExpansionTile(
              title: Text("La Fim Du Monde"),
              subtitle: Text("Beer"),
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      Text("12% alc"),
                      Text("Country: Belgium"),
                    ]
                  )
                )
              ]
              ),
            ExpansionTile(
              title: Text("Bosque Dos Bois"),
              subtitle: Text("Cachaça"),
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      Text("42% alc"),
                      Text("Country: Brazil"),
                    ]
                  )
                )
              ]
              ),
            ExpansionTile(
              title: Text("Sandman"),
              subtitle: Text("Wine"),
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      Text("16% alc"),
                      Text("Country: Portugal"),
                    ]
                  )
                )
              ]
              ),
          ],
        ),
      ),
     ); 
  runApp(app);

}