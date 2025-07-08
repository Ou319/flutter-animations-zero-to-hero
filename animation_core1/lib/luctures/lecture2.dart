import 'package:flutter/material.dart';

class Lecture2 extends StatefulWidget {
  const Lecture2({super.key});

  @override
  State<Lecture2> createState() => _Lecture2State();
}

class _Lecture2State extends State<Lecture2> {
  bool isAnimated = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 77, 200, 235),
        title: Text(
          'Animated contgainer',
        ),
      ),
      body: Center(
          child: GestureDetector(
            onTap: (){
              setState(() {
                isAnimated =true;
              });
            },
            child: AnimatedContainer(
                    duration: Duration(milliseconds: 200),
                    padding: EdgeInsets.all(10),
                    width:isAnimated ? 350 : 200,
                    height: isAnimated ? 350 : 200,
                    decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color:isAnimated? Colors.amber: Colors.blueAccent,
                    ),
                    child: Image.asset("assets/jerry.png"),
                  ),
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            isAnimated = false;
          });
        },
        child: Icon(Icons.restore_sharp),
      ),
    );
  }
}
