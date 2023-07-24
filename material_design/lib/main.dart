import 'package:flutter/material.dart';
import 'package:material_design/sayfa3.dart';
import 'package:material_design/sayfa4.dart';
import 'package:material_design/sayfa5.dart';
import 'package:material_design/sayfa6.dart';
import 'package:material_design/sayfa7.dart';

import 'Sayfa2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var formKey = GlobalKey<FormState>();
  var tfKullaniciAdi = TextEditingController();
  var tfSifre = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        //centerTitle: true,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Başlık",style: TextStyle(color: Colors.white,fontSize: 16.0),),
            Text("Alt Başlık",style: TextStyle(color: Colors.white,fontSize: 12.0),)
          ],
        ),
        leading: IconButton(
          tooltip: "Menu Icon",
          icon: Icon(Icons.dehaze),
          onPressed: (){
            print("Menu Icon Tıklandı");
          },
        ),
        actions:[
          TextButton(onPressed: (){
            print("Çıkış Tıklandı");

          }, child: Text("Çıkış", style: TextStyle(color:Colors.white)),),
          IconButton(
            tooltip: "Bilgi",
            icon: Icon(Icons.info_outline),
            onPressed: (){
              print("Bilgi Tıklandı");
            },
          ),
          PopupMenuButton(
            tooltip: "Bilgi",
            child: Icon(Icons.more_vert),
            itemBuilder: (context)=>[
              PopupMenuItem(
                value: 1,
                child: Text("Sil"),
              ),
              PopupMenuItem(
                value: 2,
                child: Text("Güncelle"),
              ),
            ],
            onSelected: (menuItemValue){
           if(menuItemValue==1){
             print("Sil Tıklandı");
           }
           if(menuItemValue==2){
             print("Güncelle Tıklandı");
           }

            },
  ),
        ],

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Form(
              key: formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: tfKullaniciAdi,
                    decoration: InputDecoration(hintText: "Kullanıcı Adı"),
                    validator: (tfGirdisi){
                      if(tfGirdisi!.isEmpty){
                        return "Kullanıcı Adı Giriniz";
                      }
                      return null;
                    }
                    ,
                  ),
                  TextFormField(
                    controller: tfSifre,
                    obscureText: true,
                    decoration: InputDecoration(hintText: "Şifre"),
                    validator: (tfGirdisi){
                      if(tfGirdisi!.isEmpty){
                        return "Şifre Giriniz";
                      }
                      if(tfGirdisi.length<6){
                        return "Şifreniz en az 6 haneli olmalıdır";
                      }
                      return null;
                    }
                    ,
                  ),
                  ElevatedButton(onPressed: (){
                    bool kontrolSonucu = formKey.currentState!.validate();
                    if(kontrolSonucu){
                      String ka = tfKullaniciAdi.text;
                      String s = tfSifre.text;
                      print("Kullnıcı adı : $ka - Şifre : $s");
                    }
                  }, child: Text("Giriş")),
                  TextButton(onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Sayfa2()));
                  }, child: Text("AppBar Arama ve Card Yapısı")),
                  TextButton(onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Sayfa3()));
                  }, child: Text("List view")),
                  TextButton(onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Sayfa4()));
                  }, child: Text("Grid view")),
                  TextButton(onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Sayfa5()));
                  }, child: Text("Dinamik List view")),
                  TextButton(onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Sayfa6()));
                  }, child: Text("Dinamik Grid view")),
                  TextButton(onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Sayfa7()));
                  }, child: Text("FuturBuilder Listeme"))
                ],
              ),
            ),
            ],
        ),
      ),

    );
  }
}
