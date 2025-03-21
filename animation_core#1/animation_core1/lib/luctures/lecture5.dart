

import 'package:flutter/material.dart';

class Lecture5 extends StatefulWidget {
  const Lecture5({super.key});

  @override
  State<Lecture5> createState() => _Lecture5State();
}

class _Lecture5State extends State<Lecture5> {
  double _padding = 12.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Animation Padding",style: TextStyle(color: Colors.white),),
      ),
      body: Center(
        child: Column(
          
          children: [
            Row(
              children: [
                AnimatedPadding(
                  padding: EdgeInsets.all(_padding), 
                  duration: Duration(milliseconds: 400),
                  curve: Curves.easeInOut,
                  child: Container(
                    width: 214,
                    height: 214,
                    child: Image.asset("assets/tom.png"),
                    color: Colors.red,
                  ),
                ),
                AnimatedPadding(
                  padding: EdgeInsets.all(_padding), 
                  duration: Duration(milliseconds: 400),
                  curve: Curves.easeInOut,
                  child: Container(
                    width: 214,
                    height: 214,
                    child: Image.asset("assets/tom.png"),
                    color: Colors.red,
                  ),
                ),
                
              ],
            ),
            Row(
              children: [
                AnimatedPadding(
                  padding: EdgeInsets.all(_padding), 
                  duration: Duration(milliseconds: 400),
                  curve: Curves.easeInOut,
                  child: Container(
                    width: 214,
                    height: 214,
                    child: Image.asset("assets/jerry.png"),
                    color: Colors.green,
                  ),
                ),
                
              AnimatedPadding(
                  padding: EdgeInsets.all(_padding), 
                  duration: Duration(milliseconds: 400),
                  curve: Curves.easeInOut,
                  child: Container(
                    width: 214,
                    height: 214,
                    child: Image.asset("assets/jerry.png"),
                    color: Colors.green,
                  ),
                ),                
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            _padding = _padding == 12.0 ? 0.0 : 12.0;
          });
        },
        child: Icon(Icons.play_arrow),
        ),
    );
  }
}