import 'package:animation_core1/explicit_animation/Buildertransitionexmple.dart';
import 'package:animation_core1/explicit_animation/Positionedtransitionexmple.dart';
import 'package:animation_core1/explicit_animation/fadetransiationexmple.dart';
import 'package:animation_core1/explicit_animation/rotitiontransationexmple.dart';
import 'package:animation_core1/explicit_animation/sizeTransitionexcemple.dart';
import 'package:animation_core1/luctures/lecture10.dart';
import 'package:animation_core1/luctures/lecture11.dart';
import 'package:animation_core1/luctures/lecture2.dart';
import 'package:animation_core1/luctures/lecture3.dart';
import 'package:animation_core1/luctures/lecture4.dart';
import 'package:animation_core1/luctures/lecture5.dart';
import 'package:animation_core1/luctures/lecture6.dart';
import 'package:animation_core1/luctures/lecture7.dart';
import 'package:animation_core1/luctures/lecture8.dart';
import 'package:animation_core1/luctures/lecture9.dart';
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => const Lecture7()),
                  );
                },
                child: const Text("Lecture #7"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => const Lecture8()),
                  );
                },
                child: const Text("Lecture #8"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => const Positionedtransitionexmple()),
                  );
                },
                child: const Text("Positioned Transition Example"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => const SizeTransitionExample()),
                  );
                },
                child: const Text("Size Transition Example"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => const Rotitiontransationexmple()),
                  );
                },
                child: const Text("Rotation Transition Example"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => const Buildertransitionexmple()),
                  );
                },
                child: const Text("Builder Transition Example"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => const Fadetransiationexmple()),
                  );
                },
                child: const Text("Fade transiation example"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => const ListAnimation()),
                  );
                },
                child: const Text("Animate List onScrool"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => const DraggableAnimatedButton()),
                  );
                },
                child: const Text("Animated Button Example"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => const AnimationListed()),
                  );
                },
                child: const Text("animationListed"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
