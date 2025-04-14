import 'dart:math';

import 'package:flutter/material.dart';

class Buildertransitionexmple extends StatefulWidget {
  const Buildertransitionexmple({super.key});

  @override
  State<Buildertransitionexmple> createState() => _BuildertransitionexmpleState();
}

class _BuildertransitionexmpleState extends State<Buildertransitionexmple>  with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _controller.repeat(reverse: true);}
  @override
  Widget build(BuildContext context) {
    return Center(
      child:AnimatedBuilder(
        animation: _controller, 
        builder: (BuildContext builder, Widget ? child){
            return Transform.rotate(angle:_controller.value * 2 * pi,child: 
            Container(
              width: 200,
              height: 200,
              child: Image.asset("assets/dog.png"),
            ),);
        }
      ),
    );
  }
}
