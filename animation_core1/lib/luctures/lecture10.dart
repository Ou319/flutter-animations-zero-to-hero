import 'package:flutter/material.dart';

class DraggableAnimatedButton extends StatefulWidget {
  const DraggableAnimatedButton({super.key});

  @override
  State<DraggableAnimatedButton> createState() => _DraggableAnimatedButtonState();
}

class _DraggableAnimatedButtonState extends State<DraggableAnimatedButton> {
  bool isChopping = false;

  double xPos = 100;
  double yPos = 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: xPos,
            top: yPos,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isChopping = !isChopping;
                });
              },
              onPanUpdate: (details) {
                setState(() {
                  xPos += details.delta.dx;
                  yPos += details.delta.dy;
                });
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                width: isChopping ? 100 : 260,
                height: 50,
                decoration: BoxDecoration(
                  color: isChopping
                      ? const Color.fromARGB(255, 217, 65, 247)
                      : Colors.blue,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: isChopping
                    ? const Icon(Icons.shopping_cart, color: Colors.white)
                    : const Center(
                        child: Text(
                          "Shopping done",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
