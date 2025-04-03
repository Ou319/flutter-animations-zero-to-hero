import 'dart:math';

import 'package:flutter/material.dart';

class Lecture7 extends StatefulWidget {
  const Lecture7({super.key});

  @override
  State<Lecture7> createState() => _Lecture7State();
}

class _Lecture7State extends State<Lecture7> {
  bool isButton=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Animation Position",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body:  AnimatedSwitcher(
          duration: Duration(milliseconds: 400),
          child: Center(
            child: isButton ? ElevatedButton(onPressed: (){
               setState(() {
                  isButton=!isButton;
              } );
            }, child: Text("his clicked")):CircularProgressIndicator(),
          ),
          
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: (){
              setState(() {
                  isButton=!isButton;
              } );
              
            },
            child: Icon(Icons.chair),
            )
          ,
    );
      
  }
  
}