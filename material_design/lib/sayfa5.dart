import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design/Sayfa2.dart';

import 'detay.dart';

class Sayfa5 extends StatefulWidget {
  const Sayfa5({super.key});

  @override
  State<Sayfa5> createState() => _Sayfa5State();
}

class _Sayfa5State extends State<Sayfa5> {
  var ulkeler=["Türkiye","Almanya","İtalya","Rusya","Çin"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Dinamik List View"),
      ),
      body: SizedBox(
        //height: 100,// scroll için yazıldı
        child: ListView.builder(
          //scrollDirection: Axis.horizontal,// yatayda scroll
          itemCount: ulkeler.length,
          itemBuilder: (context,index){
           return GestureDetector(
             onTap: (){
               print("${ulkeler[index]} seçildi");
             },
             child: GestureDetector(
               onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=> Detay(ulkeAdi: ulkeler[index],)));
               },
               child: Card(
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: SizedBox(
                     width: 100,
                     child: Row(
                       children: [
                         Text("${ulkeler[index]}"),
                        Spacer(),
                        PopupMenuButton(
                          icon: Icon(Icons.more_vert),
                          itemBuilder: (context)=>[
                            PopupMenuItem(value:1,child: Text("Sil")),
                            PopupMenuItem(value:2,child: Text("Güncelle")),
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
                 ),
               ),
             ),
           );
          },


        ),
      ),
    );
  }
}
