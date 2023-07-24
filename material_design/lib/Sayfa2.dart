import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sayfa2 extends StatefulWidget {
  const Sayfa2({super.key});

  @override
  State<Sayfa2> createState() => _Sayfa2State();
}

class _Sayfa2State extends State<Sayfa2> {
  bool aramaYapiliyorMu = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: aramaYapiliyorMu?
            TextField(
              decoration: InputDecoration( hintText: "Arama Yapın", ),
              onChanged: (aramaSonucu){
                print("Arama Sonucu : $aramaSonucu");
              },
            )
            :Text("AppBar Arama"),
        actions: [
          aramaYapiliyorMu ?
          IconButton(onPressed: (){
            setState(() {
              aramaYapiliyorMu=false;
            });
          }, icon: Icon(Icons.cancel))
              :
          IconButton(onPressed: (){
           setState(() {
             aramaYapiliyorMu=true;
           });
          }, icon: Icon(Icons.search))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 300,
              child: Card(
                color: Colors.deepPurpleAccent,
                elevation: 10.0, // gölge
                shadowColor: Colors.yellow,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(bottomRight:Radius.circular(10),topLeft:Radius.circular(10)),
                  side: BorderSide(width: 1,color: Colors.pinkAccent),
                ),
                child: Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Toplam Puan",style: TextStyle(color: Colors.white,fontSize: 30.0,fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.star,color: Colors.amber,),
                            Text("150",style: TextStyle(color: Colors.white,fontSize: 40.0,fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
