import 'package:animation/Explicit%20_Animation.dart';
import 'package:animation/Explicit1.dart';
import 'package:animation/Explicit2.dart';
import 'package:animation/HomePage.dart';
import 'package:animation/Implicit_Animation.dart';
import 'package:animation/page1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=>HomePage(),
        'Explicit_Animation':(context)=>Explicit_Animation(),
        'Implicit_Animation':(context)=>Implicit_Animation(),
        'page1':(context)=>page1(),
        'Explicit1':(context)=>Explicit1(),
        'Explicit2':(context)=>Explicit2(),
      },
    ),
  );
}