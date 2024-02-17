import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const DiceApp());
}
class DiceApp extends StatefulWidget {
  const DiceApp({super.key});

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int diceno=4;
  int diceno2=2;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        backgroundColor: Colors.black ,
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          centerTitle: true,
          title: Text('Dicee'),
          ),
          body: Center(
          child:Row(
          children: [
            GestureDetector(
              onTap: (){

                setState(() {
                  diceno2=Random().nextInt(6)+1;
                  diceno=Random().nextInt(6)+1;

                });

              },
                child: Image.asset('images/$diceno.jpeg')),
            GestureDetector(
              onTap: () {

                setState(() {
                  diceno2=Random().nextInt(6)+1;
                  diceno=Random().nextInt(6)+1;

                });

              },
                child: Image.asset('images/$diceno2.jpeg')),
        ],
      ),
        ),
      ),
      );


  }
}


