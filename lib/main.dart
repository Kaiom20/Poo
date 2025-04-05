import 'package:flutter/material.dart';

class NewNavBar extends StatelessWidget{
  final List<Icon> icones;
  
  NewNavBar(this.icones, {super.key});

  void botaoFoiTocado(int index) {
    print("Tocaram no botão $index");
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: botaoFoiTocado,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black,
      items: icones
          .map((icone) => BottomNavigationBarItem(
              icon: icone,
              label: "",
          ))
          .toList()
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

class MyApp extends StatelessWidget{
  MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(primarySwatch: Colors.deepPurple),

      home: Scaffold(

        appBar: CustomAppBar(),

        body: ShowDrinks(),

        bottomNavigationBar: NewNavBar([
          Icon(Icons.coffee_outlined),
          Icon(Icons.coffee_outlined),
          Icon(Icons.local_drink_outlined),
          Icon(Icons.local_drink_outlined),
          Icon(Icons.flag_outlined),
          Icon(Icons.flag_outlined),
        ]),

      ));

  }
}

class CustomAppBar extends AppBar{
  CustomAppBar() : super(
    title: Text("Dicas"),
  );
}

void main() {

  MyApp app = MyApp();

  runApp(app);

}