import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'detay.dart';

class Sayfa6 extends StatefulWidget {
  const Sayfa6({super.key});

  @override
  State<Sayfa6> createState() => _Sayfa6State();
}

class _Sayfa6State extends State<Sayfa6> {
  var ulkeler=["Türkiye","Almanya","İtalya","Rusya","Çin"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Anasayfa"),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2/1,
        ),
        itemCount: ulkeler.length,
        itemBuilder: (context,index){
          return GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Detay(ulkeAdi: ulkeler[index],)));
            },
            child: Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("${ulkeler[index]}"),
                  Spacer(),
                  PopupMenuButton(
                    child: Icon(Icons.more_vert),
                    itemBuilder: (context)=>[
                      PopupMenuItem(value: 1,child: Text("Sil")),
                      PopupMenuItem(value: 2,child: Text("Güncelle")),
                    ],
                    onSelected: (menuItemValue){
                      if(menuItemValue==1){
                        print("${ulkeler[index]} Silindi");
                      }
                      if(menuItemValue==2){
                        print("${ulkeler[index]} Güncellendi");
                      }

                    },
                  ),
                ],
              ),
            ),
          );

        },
          )

    );
  }
}
