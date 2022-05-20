import 'dart:math';

import 'package:animation/Explicit1.dart';
import 'package:flutter/material.dart';

class Explicit_Animation extends StatefulWidget {
  const Explicit_Animation({Key? key}) : super(key: key);

  @override
  _Explicit_AnimationState createState() => _Explicit_AnimationState();
}

class _Explicit_AnimationState extends State<Explicit_Animation>
    with SingleTickerProviderStateMixin {
  late AnimationController rotationController;
  late AnimationController animationController;
  late Animation colorAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // var sizeAnimation =
    //     Tween(begin: 100, end: 300).animate(animationController);
    // colorAnimation = ColorTween(begin: Colors.amber, end: Colors.redAccent)
    //     .animate(animationController);
    // animationController.addListener(() {
    //   setState(() {});
    // });
    // animationController.addStatusListener((status) {
    //   if (status == AnimationStatus.completed) {
    //     animationController.reverse();
    //   } else if (status == AnimationStatus.dismissed) {
    //     animationController.forward();
    //   }
    // });
    // sizeAnimation = Tween(begin: 100, end: 300).animate(
    //     CurvedAnimation(parent: animationController, curve: Interval(0, 0.5)));

    rotationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 2000),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("EXPLICIT ANIMATION"),
          centerTitle: true,
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: Container(
            height: 470,
            child: Column(
              children: [
                AnimatedBuilder(
                    animation: rotationController,
                    child: Image.asset("asset/image/moon.jpg"),
                    builder: (context, child) {
                      return Transform.rotate(
                        angle: rotationController.value * pi * 2,
                        child: child,
                      );
                    }),
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
                ElevatedButton(onPressed: (){
                  Navigator.of(context).pushNamed('Explicit1');
                }, child: Text("NEXT EXPLICIT PAGE"),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
