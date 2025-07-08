import 'package:flutter/material.dart';

class SizeTransitionExample extends StatefulWidget {
  const SizeTransitionExample({super.key});

  @override
  State<SizeTransitionExample> createState() => _SizeTransitionExampleState();
}

class _SizeTransitionExampleState extends State<SizeTransitionExample> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _startAnimation() {
    _controller.reset();
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 77, 200, 235),
        title: const Text('Size Transition Example'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: _startAnimation,
          child: Container(
            width: 400,
            height: 400,
            color: Colors.orange,
            child: Center(
              child: SizeTransition(
                sizeFactor: _animation,
                axis: Axis.horizontal,
                axisAlignment: -1,
                child: Container(
                  color: Colors.blue,
                  width: 100,
                  height: 100,
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Image.asset("assets/dog.png"),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
