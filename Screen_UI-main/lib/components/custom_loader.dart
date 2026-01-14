import 'dart:async';

import 'package:flutter/material.dart';

class CircularLoader extends StatefulWidget{
  const CircularLoader({super.key});

   @override
  State<CircularLoader> createState() => _LoaderState();
}

  class _LoaderState extends State<CircularLoader>{
  
  double _initial = 0.0;

  void update(){
    Timer.periodic(
      Duration(seconds: 2), (timer){
        setState(() {
          _initial = _initial + 0.1;
        });

      }
      );
  }

    @override
    Widget build(BuildContext context){
      update();
      return SizedBox(
        height: 8,
        width: 8,
        child: CircularProgressIndicator(
          backgroundColor: Color(0xff000000),
          strokeWidth: 3.0,
          valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
        ),
      );
      
    }

  }

