import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Detay extends StatefulWidget {
  String ulkeAdi;


  Detay({required this.ulkeAdi});

  @override
  State<Detay> createState() => _DetayState();
}

class _DetayState extends State<Detay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Anasayfa"),
      ),
      body: Center(
        child: Text(widget.ulkeAdi,style: TextStyle(color: Colors.deepPurple,fontSize: 30 ),),
      ),

    );
  }
}
