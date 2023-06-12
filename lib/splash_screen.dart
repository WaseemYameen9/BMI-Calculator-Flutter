

import 'dart:async';

import 'package:bmi/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget
{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
        return MyHomePage();
      }));
    } );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.blue.shade200,
      child: Center(
        child: Container(
          child: CircleAvatar(backgroundImage: AssetImage('assets/BMI.png'),radius: 120,backgroundColor: Colors.blue.shade200,),
        ),
      ),
    );
  }
}