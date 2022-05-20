import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("HOME PAGE"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: 100,
          child: Column(
              children: [
                ElevatedButton(onPressed: (){
                  Navigator.of(context).pushNamed('Implicit_Animation');
                }, child: Text("Implicit Animation"),),
                ElevatedButton(onPressed: (){
                  Navigator.of(context).pushNamed('Explicit_Animation');
                }, child: Text("Explicit Animation"),),
              ],
          ),
        ),
      ),
    ),
    );
  }
}
