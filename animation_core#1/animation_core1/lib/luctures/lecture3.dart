import 'package:flutter/material.dart';

class Lecture3 extends StatefulWidget {
  const Lecture3({super.key});

  @override
  State<Lecture3> createState() => _Lecture3State();
}

class _Lecture3State extends State<Lecture3> {
  bool isAnimated = false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Text"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AnimatedDefaultTextStyle(
                duration: Duration(milliseconds: 300),
                style: TextStyle(
                  color:isAnimated?  Colors.red : Colors.green,
                  fontSize: isAnimated ? 50 : 20,
                  fontWeight: FontWeight.bold,
                ),
                child: Text("Hello Outmane"),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center, 
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isAnimated = true;
                      });
                    },
                    child: Icon(Icons.add, size: 30),
                  ),
                  SizedBox(width: 20), 
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isAnimated = false;
                      });
                    },
                    child: Icon(Icons.remove, size: 30),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
