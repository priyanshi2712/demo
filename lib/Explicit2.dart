import 'package:flutter/material.dart';

class Explicit2 extends StatefulWidget {
  const Explicit2({Key? key}) : super(key: key);

  @override
  _Explicit2State createState() => _Explicit2State();
}

class _Explicit2State extends State<Explicit2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("EXPLICIT 2"),
        centerTitle: true,
      ),
      body: Container(
        height: 100,
        width: 100,
        color: Colors.redAccent,
      ),
    ),
    );
  }
}
