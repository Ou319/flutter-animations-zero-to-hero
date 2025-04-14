import 'package:flutter/material.dart';

class Fadetransiationexmple extends StatefulWidget {
  const Fadetransiationexmple({super.key});

  @override
  State<Fadetransiationexmple> createState() => _FadetransiationexmpleState();
}

class _FadetransiationexmpleState extends State<Fadetransiationexmple>  with SingleTickerProviderStateMixin{
  late AnimationController _controller;
  late Animation<double> _animation;


  @override
  void initState() {
    super.initState();

    _controller =AnimationController(vsync: this,duration: const Duration(seconds: 3),);
    _animation = Tween<double>(begin: 0,end: 3).animate(_controller);
  }


  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  void _startaniamtio(){
    _controller.reset();
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Center(
      child: FadeTransition(
        opacity: _animation,
        child: Image.asset("assets/dog.png",fit: BoxFit.cover,),
      ),
    ),
    floatingActionButton: FloatingActionButton(onPressed: (){_startaniamtio();},child: const Icon(Icons.play_arrow),),
    );
    
  }
}