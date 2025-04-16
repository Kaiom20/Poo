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

        body: MytileWidget(
          items: dataCoffee,
          fields: ["name", "type", "price"],
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



class MytileWidget extends StatelessWidget {
  final List<Map<String, dynamic>> items;
  final List<String> fields;

  const MytileWidget({
    super.key,
    required this.items,
    required this.fields,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        var item = items[index];

        return ListTile(
          leading: const Icon(Icons.list),
          title: Text(item[fields[0]]?.toString() ?? ''),
          subtitle: Text(fields.skip(1).map((f) =>
              '${f[0].toUpperCase()}${f.substring(1)}: ${item[f] ?? ""}').join(', ')),
          trailing: const Icon(Icons.arrow_forward_ios),
        );
      },
    );
  }
}