import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sayfa3 extends StatefulWidget {
  const Sayfa3({super.key});

  @override
  State<Sayfa3> createState() => _Sayfa3State();
}

class _Sayfa3State extends State<Sayfa3> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("List View"),
      ),
      body: ListView(
        children: [
        ListTile(
          leading: Icon(Icons.wb_sunny),
          title: Text("Güneş"),
          subtitle: Text("Güneş alt başlık"),
          trailing: Icon(Icons.arrow_right),
          onTap: (){
            print("Güneş Tıklandı");  },
        ),
          ListTile(
            leading: Icon(Icons.brightness_2),
            title: Text("Ay"),
            subtitle: Text("Ay alt başlık"),
            trailing: Icon(Icons.arrow_right),
            onTap: (){
              print("Ay Tıklandı");  },
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text("Yıldız"),
            subtitle: Text("Yıldız alt başlık"),
            trailing: Icon(Icons.arrow_right),
            onTap: (){
              print("Yıldız Tıklandı");  },
          ),
          GestureDetector(
            onTap: (){
              print("Card Tıklandı");
            },
            child: Card(
              color: Colors.white70,
              elevation: 10.0, // gölge
              shadowColor: Colors.yellow,
              child: SizedBox(
                height: 50,
                child: Row(
                  children: [
                    Text("Card Tasarım"),
                    Spacer(),
                    Icon(Icons.more_vert),
                  ],
                ),
              )
            ),
          ),
      ],
      ),

    );
  }
}
