import 'package:flutter/material.dart';

var dataCoffee = [
  {
    "name": "Santa Clara",
    "type": "Gourmet",
    "price": "15,99"
  },
  {
    "name": "Santa Helena",
    "type": "Premium",
    "price": "13,99"
  },
  {
    "name": "3 Corações",
    "type": "Extraforte",
    "price": "11,99"
  },
];

var dataObjects = [
    {
      "name": "La Fin Du Monde",
      "style": "Bock",
      "ibu": "65"
    },
    {
      "name": "Sapporo Premiume",
      "style": "Sour Ale",
      "ibu": "54"
    },
    {
      "name": "Duvel", 
      "style": "Pilsner", 
      "ibu": "82"
    },
    {
      "name": "La Fin Du Monde",
      "style": "Bock",
      "ibu": "65"
    },
    {
      "name": "Sapporo Premiume",
      "style": "Sour Ale",
      "ibu": "54"
    },
    {
      "name": "Duvel", 
      "style": "Pilsner", 
      "ibu": "82"
    },
    {
      "name": "La Fin Du Monde",
      "style": "Bock",
      "ibu": "65"
    },
    {
      "name": "Sapporo Premiume",
      "style": "Sour Ale",
      "ibu": "54"
    },
    {
      "name": "Duvel", 
      "style": "Pilsner", 
      "ibu": "82"
    },
    {
      "name": "La Fin Du Monde",
      "style": "Bock",
      "ibu": "65"
    },
    {
      "name": "Sapporo Premiume",
      "style": "Sour Ale",
      "ibu": "54"
    },
    {
      "name": "Duvel", 
      "style": "Pilsner", 
      "ibu": "82"
    },
    {
      "name": "La Fin Du Monde",
      "style": "Bock",
      "ibu": "65"
    },
    {
      "name": "Sapporo Premiume",
      "style": "Sour Ale",
      "ibu": "54"
    },
    {
      "name": "Duvel", 
      "style": "Pilsner", 
      "ibu": "82"
    },
    {
      "name": "La Fin Du Monde",
      "style": "Bock",
      "ibu": "65"
    },
    {
      "name": "Sapporo Premiume",
      "style": "Sour Ale",
      "ibu": "54"
    },
    {
      "name": "Duvel", 
      "style": "Pilsner", 
      "ibu": "82"
    }
  ];

void main() {

  MyApp app = MyApp();

  runApp(app);

}

class MyApp extends StatelessWidget {

  @override

  Widget build(BuildContext context) {

    

    return MaterialApp(

      theme: ThemeData(primarySwatch: Colors.deepPurple),

      debugShowCheckedModeBanner:false,

      home: Scaffold(

        appBar: AppBar( 

          title: const Text("Dicas"),

          ),

        body: Scrollbar(
          child: SingleChildScrollView(
            child: DataBodyWidget(objects: dataCoffee),
          ),
        ),

        bottomNavigationBar: NewNavBar(),

      ));

  }

}





class NewNavBar extends StatelessWidget {
  NewNavBar();
  void botaoFoiTocado(int index) {
    print("Tocaram no botão $index");
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(onTap: botaoFoiTocado, items: const [
      BottomNavigationBarItem(
        label: "Cafés",
        icon: Icon(Icons.coffee_outlined),
      ),
      BottomNavigationBarItem(
          label: "Cervejas", icon: Icon(Icons.local_drink_outlined)),
      BottomNavigationBarItem(label: "Nações", icon: Icon(Icons.flag_outlined))
    ]);
  }
}


class DataBodyWidget extends StatelessWidget {
  final List<Map<String, dynamic>> objects;

  DataBodyWidget({this.objects = const []});

  @override
  Widget build(BuildContext context) {
    if (objects.isEmpty) {
      return Center(child: Text("Nenhum dado disponível"));
    }

    final keys = objects.first.keys.toList();

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        columns: keys
            .map((key) => DataColumn(label: Text(key)))
            .toList(),
        rows: objects.map((obj) {
          return DataRow(
            cells: keys.map((key) {
              return DataCell(Text('${obj[key] ?? ''}'));
            }).toList(),
          );
        }).toList(),
      ),
    );
  }
}