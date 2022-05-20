import 'package:flutter/material.dart';

class page1 extends StatefulWidget {
  const page1({Key? key}) : super(key: key);

  @override
  _page1State createState() => _page1State();
}

class _page1State extends State<page1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("PAGE1"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Hero(
              tag:"home",
              child: Icon(Icons.home,size: 100,),
          ),
          ElevatedButton(onPressed: (){
            Navigator.of(context).pop('Implicit_Animation');
          }, child: Text("implicit page"))
        ],
      ),
    ),
    );
  }
}
