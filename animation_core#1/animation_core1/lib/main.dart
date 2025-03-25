import 'package:animation_core1/luctures/lecture2.dart';
import 'package:animation_core1/luctures/lecture3.dart';
import 'package:animation_core1/luctures/lecture4.dart';
import 'package:animation_core1/luctures/lecture5.dart';
import 'package:animation_core1/luctures/lecture6.dart';
import 'package:flutter/material.dart';
import 'package:animation_core1/luctures/lecture1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Animation Flutter",
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Animation Flutter",style: TextStyle(color: Colors.white),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          shrinkWrap: true,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => const Lecture1()),
                  );
                },
                child: const Text("Lecture #1"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => const Lecture2()),
                  );
                },
                child: const Text("Lecture #2"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => const Lecture3()),
                  );
                },
                child: const Text("Lecture #3"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => const Lecture4()),
                  );
                },
                child: const Text("Lecture #4"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => const Lecture5()),
                  );
                },
                child: const Text("Lecture #5"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => const Lecture6()),
                  );
                },
                child: const Text("Lecture #6"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
