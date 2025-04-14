import 'package:flutter/material.dart';

class Rotitiontransationexmple extends StatefulWidget {
  const Rotitiontransationexmple({super.key});

  @override
  State<Rotitiontransationexmple> createState() => _RotitiontransationexmpleState();
}

class _RotitiontransationexmpleState extends State<Rotitiontransationexmple>  with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    _animation =Tween<double>(begin: 0,end: 7).animate(_controller);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
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
        title: Text(
          'Rotation Transition',
        ),
      ),
      body: Center(
        child: RotationTransition(
          turns: _animation,
          child: Image.asset("assets/dog.png",fit: BoxFit.cover,),
          ),
          
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _startAnimation();
        },
        child: const Icon(Icons.play_arrow),
        ),
      
    );
    
  }
}