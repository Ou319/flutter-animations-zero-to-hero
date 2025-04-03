import 'package:flutter/material.dart';

class Lecture6 extends StatefulWidget {
  const Lecture6({super.key});

  @override
  State<Lecture6> createState() => _Lecture6State();
}

class _Lecture6State extends State<Lecture6> {
  bool ischnage = false;

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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 400),
              top: 0,
              left: 0,
              child: SizedBox(
                width: 180,
                height: 180,
                child: Image.asset("assets/cheese.png"),
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 400),
              top: ischnage ? 200 : 0, 
              right: ischnage ? 0 : 300,
              child: SizedBox(
                width: 180,
                height: 180,
                child: Image.asset("assets/tom.png"),
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 400),
              bottom: ischnage ? 300 : 0, 
              right: 0,
              child: SizedBox(
                width: 180,
                height: 180,
                child: Image.asset("assets/jerry.png"),
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 400),
              bottom: 0,
              left: ischnage ? 200 : 0, 
              child: SizedBox(
                width: 180,
                height: 180,
                child: Image.asset("assets/dog.png"),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ischnage = !ischnage; 
          });
        },
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
