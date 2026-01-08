import 'dart:async';

import 'package:flutter/material.dart';
import 'package:screen_ui/onboarding/onboarding1.dart';
import 'package:screen_ui/components/custom_text.dart';


class SplashScreen extends StatefulWidget {
     const SplashScreen({super.key});

     @override
     State<SplashScreen> createState() => _SplashState();
}

class _SplashState extends State<SplashScreen> {
  @override 
    void initState(){
      super.initState();

      Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder:(context) => OnBoarding1(),
            ),
            ),
        );
    }

    @override
    Widget build(BuildContext context){
      return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color.fromARGB(255, 255, 25, 71),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                height: 200,
                width: 200,
                image: AssetImage('assets/Splash Image.png'),
                ),
              CustomText(
                text: 'Travello',
                styleText: TextStyle(
                  fontSize: 48,
                  fontFamily: 'Nico Moji',
                  color: Colors.white
                ),
              )
            ],
          ),
        ),
      );
    }
  }
  