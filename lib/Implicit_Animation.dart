import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Implicit_Animation extends StatefulWidget {
  const Implicit_Animation({Key? key}) : super(key: key);

  @override
  _Implicit_AnimationState createState() => _Implicit_AnimationState();
}

class _Implicit_AnimationState extends State<Implicit_Animation> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("IMPLICIT ANIMATION"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: 150,
          child:Column(
            children: [
              Hero(
                tag: "add",
                child: Icon(Icons.home,size: 100,),
              ),
              ElevatedButton(onPressed: (){
                Navigator.of(context).pushNamed('page1');
              }, child: Text("NEXT PAGE"),
              ),
            ],
          ),
        ),
      ),
    ),
    );
  }
}
