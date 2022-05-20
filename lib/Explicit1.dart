import 'dart:math';

import 'package:animation/Explicit2.dart';
import 'package:flutter/material.dart';

class Explicit1 extends StatefulWidget {
  const Explicit1({Key? key}) : super(key: key);

  @override
  _Explicit1State createState() => _Explicit1State();
}

class _Explicit1State extends State<Explicit1>with SingleTickerProviderStateMixin{
  late AnimationController animationController;
  late AnimationController rotationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    rotationController = AnimationController(vsync: this,
    duration: Duration(milliseconds: 2000),);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("EXPLICIT 1"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedBuilder(
              animation: rotationController,
              builder: (context, child) {
                return Transform.rotate(
                  angle: rotationController.value * pi * 2,
                  // angle: rotationController.value * pi * 50,
                  child: child,
                );
              },
              child: Container(
                margin: EdgeInsets.all(30),
                height: 100,
                width: 100,
                color: Colors.pink,
              ),
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                rotationController.forward();
              },
              child: Text("Animation"),
            ),
            ElevatedButton(
              onPressed: () {
                rotationController.reverse();
              },
              child: Text("Reverse Animation"),
            ),
            ElevatedButton(
              onPressed: () {
                rotationController.repeat();
              },
              child: Text("Repeat Animation"),
            ),
            ElevatedButton(
              onPressed: () {
                rotationController.stop();
              },
              child: Text("Stop Animation"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('Explicit2');
              },
              child: Text("Explicit page 2"),
            ),
          ],
        ),
      ),
    ));
  }
}
