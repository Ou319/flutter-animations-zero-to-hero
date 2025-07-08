import 'package:flutter/material.dart';

class Lecture4 extends StatefulWidget {
  const Lecture4({super.key});

  @override
  State<Lecture4> createState() => _Lecture4State();
}

class _Lecture4State extends State<Lecture4> {
  bool isOpacity=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Opcatiry"),
        backgroundColor: Colors.blueAccent,
      ),
      body: AnimatedOpacity(
        opacity:isOpacity? 1.0:0.0, 
        duration: Duration(milliseconds: 400),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/tom.png'),
            SizedBox(height: 10),
            Text("This is an animated Opacity"),
            SizedBox(height: 10),
           
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            // our state is //later
            isOpacity=!isOpacity;
          });
        },
        child:isOpacity? Icon(Icons.visibility):Icon(Icons.visibility_off),
      ),
    );
  }
}