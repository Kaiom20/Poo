import 'package:flutter/material.dart';

class NewNavBar extends StatelessWidget{
  NewNavBar();

  void botaoFoiTocado(int index) {
    print("Tocaram no botão $index");
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: botaoFoiTocado,
      items: const[
        BottomNavigationBarItem(
          label: "Cafés", 
          icon: Icon(Icons.coffee_outlined),
        ),
        BottomNavigationBarItem(
          label: "Cervejas", icon: Icon(Icons.local_drink_outlined)),
        BottomNavigationBarItem(label: "Nações", icon: Icon(Icons.flag_outlined)),
      ],
    );
  }
}

class ShowDrinks extends StatelessWidget{
  ShowDrinks();

@override
Widget build(BuildContext context) {
  return Column(children: [
          Expanded(
            child: Text("La Fin Du Monde - Bock - 65 ibu"),
          ),
          Expanded(
            child: Text("Sapporo Premiume - Sour Ale - 54 ibu"),
          ),
          Expanded(
            child: Text("Duvel - Pilsner - 82 ibu"),
          ),
        ]);
  }
}

void main() {

  MaterialApp app = MaterialApp(

      theme: ThemeData(primarySwatch: Colors.deepPurple),

      home: Scaffold(

        appBar: AppBar(title: Text("Dicas")),

        body: ShowDrinks(),

        bottomNavigationBar: NewNavBar(),

      ));

  runApp(app);

}