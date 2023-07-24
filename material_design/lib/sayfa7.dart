import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sayfa7 extends StatefulWidget {
  const Sayfa7({super.key});

  @override
  State<Sayfa7> createState() => _Sayfa7State();
}

class _Sayfa7State extends State<Sayfa7> {
  Future<List<String>> verileriGetir() async{
    var ulkeler=["Türkiye","Almanya","İtalya","Rusya","Çin"];
    return ulkeler;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("FutureBuilder Listeleme"),
      ),
      body: FutureBuilder<List<String>>(
        future: verileriGetir(),
        builder: (context,snapshot){
          if(snapshot.hasData){
          var ulkeler = snapshot.data;
          return ListView.builder(
            itemCount: ulkeler!.length,
            itemBuilder: (context,index){
              return Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 50,
                    child: Row(
                      children: [
                        Text(ulkeler[index]),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
          }else{
            return Center();
          }
        },
      ),

    );
  }
}
