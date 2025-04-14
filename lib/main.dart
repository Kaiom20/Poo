import 'package:flutter/material.dart';



void main() {

  MyApp app = MyApp();

  runApp(app);

}





class MyApp extends StatelessWidget {

  @override

  Widget build(BuildContext context) {

    return MaterialApp(

        theme: ThemeData(primarySwatch: Colors.deepPurple),

        debugShowCheckedModeBanner: false,

        home: Scaffold(

          appBar: CustomAppBar(),

          body: DataBodyWidget(objects: [
            "La Fin Du Monde - Bock - 65 ibu",
            "Sapporo Premiume - Sour Ale - 54 ibu",
            "Duvel - Pilsner - 82 ibu",
            "Duvel - Pilsner - 82 ibu",
            "Duvel - Pilsner - 82 ibu",
            "Duvel - Pilsner - 82 ibu"
          ]),

          bottomNavigationBar: NewNavBar(objects: [
              Icon(Icons.coffee_outlined),
              Icon(Icons.coffee_outlined),
              Icon(Icons.local_drink_outlined),
              Icon(Icons.local_drink_outlined),
              Icon(Icons.flag_outlined),
              Icon(Icons.flag_outlined)
          ]),

        ));

  }

}

class CustomAppBar extends AppBar {
  CustomAppBar() : super(
            title: const Text("Dicas"),
            actions: [
              PopupMenuButton<String>(
                onSelected: (String value) {
                  print('Cor Selecionada: $value');
                },
                itemBuilder: (BuildContext context) => <PopupMenuEntry<String>> [
                  const PopupMenuItem<String> (
                    value: 'Red',
                    child: Text('Vermelho'),
                  ),
                  const PopupMenuItem<String> (
                    value: 'Yellow',
                    child: Text('Amarelo'),
                  ),
                  const PopupMenuItem<String> (
                    value: 'Orange',
                    child: Text('Laranja'),
                  ),
                ],
              ),
            ],
          );
}

class NewNavBar extends StatelessWidget {
  List<Icon> objects;
  NewNavBar({this.objects = const []});

  void botaoFoiTocado(int index) {
    print("Tocaram no botão $index");
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black,
      items: objects
        .map((icn) => BottomNavigationBarItem(
          icon: icn,
          label: '',
        ))
        .toList(),
      onTap: botaoFoiTocado,
    );
  }
}



class DataBodyWidget extends StatelessWidget {
  List<String> objects;
  DataBodyWidget( {this.objects = const [] });

  Expanded processarUmElemento(String obj){

    return Expanded(                
          child: Center(child: Text(obj)),
        );
  }
  @override
  Widget build(BuildContext context) {

    return Column(children: objects.map( 
      (obj) => Expanded(
        child: Center(child: Text(obj)),
        )
      ).toList());
  }
}