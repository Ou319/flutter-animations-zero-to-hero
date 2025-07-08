import 'package:flutter/material.dart';

class Lecture1 extends StatefulWidget {
  const Lecture1({super.key});

  @override
  State<Lecture1> createState() => _Lecture1State();
}

class _Lecture1State extends State<Lecture1> {
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 96, 164, 220),
        title: const Text("Lecture #1",style: TextStyle(color: Colors.white),),
      ),
      body:
      Stack(
        children: [
           AnimatedAlign(
        alignment: getAlignment(index), 
        duration: Duration(milliseconds: 300),
        child: Container(
          width: 100,
          height: 100,
          color: Colors.transparent,
          child: Image.asset("assets/jerry.png"),
        ),
      ),
           AnimatedAlign(
        alignment: getAlignment(index+1), 
        duration: Duration(milliseconds: 300),
        child: Container(
          width: 100,
          height: 100,
          color: Colors.transparent,
          child: Image.asset("assets/tom.png"),
        ),
      ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            index++;
          });
        },
        child: const Icon(Icons.play_arrow),
      ),
    );
  }

  Alignment getAlignment(int Alignmentindex) {
    switch (Alignmentindex) {
      case 0:
        return Alignment.center;
      case 1:
        return Alignment.topLeft;
      case 2:
        return Alignment.topRight;
      case 3:
        return Alignment.bottomLeft;
      case 4:
        return Alignment.centerRight;
      case 5:
        return Alignment.topCenter;
      case 6:
        return Alignment.bottomCenter;
      case 7:
        return Alignment.centerLeft;
      case 8:
        return Alignment.bottomRight;
      default:
      index=0;
        return Alignment.center;
    }
  }
}