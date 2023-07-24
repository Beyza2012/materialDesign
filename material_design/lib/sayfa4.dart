import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sayfa4 extends StatefulWidget {
  const Sayfa4({super.key});

  @override
  State<Sayfa4> createState() => _Sayfa4State();
}

class _Sayfa4State extends State<Sayfa4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Grid View"),
      ),
      body: GridView.count(
        crossAxisCount: 2,//satırda kaç item
        childAspectRatio: 2/1,//her bir item geniliği 2 yüksekliği 1
        children: [
          Card(
              color: Colors.white70,
              elevation: 10.0, // gölge
              shadowColor: Colors.yellow,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.wb_sunny),
                  Text("Güneş"),
                ],
              )
          ),
          Card(
              color: Colors.white70,
              elevation: 10.0, // gölge
              shadowColor: Colors.yellow,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.brightness_2),
                  Text("Ay"),
                ],
              )
          ),
          Card(
              color: Colors.white70,
              elevation: 10.0, // gölge
              shadowColor: Colors.yellow,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star),
                  Text("Yıldız"),
                ],
              )
          ),
        ],
      ),

    );
  }
}
