import 'package:flutter/material.dart';

class Positionedtransitionexmple extends StatefulWidget {
  const Positionedtransitionexmple({super.key});

  @override
  State<Positionedtransitionexmple> createState() =>
      _PositionedtransitionexmpleState();
}

class _PositionedtransitionexmpleState extends State<Positionedtransitionexmple>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<RelativeRect> _jerryAnimation;
  late Animation<RelativeRect> _tomAnimation;
  late Animation<RelativeRect> _spikeAnimation2;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _jerryAnimation = RelativeRectTween(
      begin: const RelativeRect.fromLTRB(0, 0, 0, 0),
      end: const RelativeRect.fromLTRB(250, 250, 0, 0),
    ).animate(_controller);
    _tomAnimation = RelativeRectTween(
      begin: const RelativeRect.fromLTRB(0, 0, 0, 0),
      end: const RelativeRect.fromLTRB(190, 190, 0, 0),
    ).animate(_controller);
    _spikeAnimation2 = RelativeRectTween(
      begin: const RelativeRect.fromLTRB(0, 0, 0, 0),
      end: const RelativeRect.fromLTRB(100, 100, 0, 0),
    ).animate(_controller);
  }


  void _startanimatio(){
    _controller.reset();
    _controller.forward();
  }
  void _stopAnimation() {
    _controller.reverse();
  }

  @override
  void dispose() {
    
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 77, 200, 235),
        title: Text(
          'Positioned Transition',
        ),
      ),
      body: Stack(
        children: [
          PositionedTransition(
              rect: _spikeAnimation2,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.red,
                child: Image.asset(
                  "assets/dog.png",
                  fit: BoxFit.cover,
                ),
              )),
          PositionedTransition(
              rect: _tomAnimation,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: Image.asset(
                  "assets/tom.png",
                  fit: BoxFit.cover,
                ),
              )),
          PositionedTransition(
              rect: _jerryAnimation,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.green,
                child: Image.asset(
                  "assets/jerry.png",
                  fit: BoxFit.cover,
                ),
              )),

              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                      ElevatedButton(onPressed: _startanimatio, child: Icon(Icons.play_arrow)),
                      ElevatedButton(onPressed: _stopAnimation, child: Icon(Icons.replay)),
                  ],
                ),
              )
        ],
      ),
    );
  }
}
