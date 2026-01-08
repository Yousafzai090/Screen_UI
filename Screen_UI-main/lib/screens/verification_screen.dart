// ignore_for_file: strict_top_level_inference

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:screen_ui/components/custom_container.dart';
import 'package:screen_ui/components/custom_text.dart';
import 'package:screen_ui/components/input_box.dart';
import 'package:screen_ui/screens/login_screen.dart';
import 'package:screen_ui/screens/signup_screen.dart';


class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerifyState();
}

class _VerifyState extends State<VerificationScreen> {
  int resendTime = 30;
  late Timer countdownTimer;
  TextEditingController txt1 = TextEditingController();
  TextEditingController txt2 = TextEditingController();
  TextEditingController txt3 = TextEditingController();
  TextEditingController txt4 = TextEditingController();
  TextEditingController txt5 = TextEditingController();
  TextEditingController txt6 = TextEditingController();

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  startTimer() {
    countdownTimer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        resendTime = resendTime - 1;
      });
      if (resendTime < 1) {
        countdownTimer.cancel();
      }
    });
  }

  stopTimer() {
    if (countdownTimer.isActive) {
      countdownTimer.cancel();
    }
  }

  String strFormatting(n) => n.toString().padLeft(2, '0');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 254, 254, 254),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 104, horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: 'Almost There',
                styleText: TextStyle(
                  fontSize: 36,
                  fontFamily: 'Mulish Extra Bold',
                  color: Color(0xff000000),
                ),
              ),

              SizedBox(height: 35),

              RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Mulish Light',
                    color: Color(0xff252525),
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text:
                          'Please enter the 6-Digit code sent to your\n email ',
                    ),
                    TextSpan(
                      text: 'yousafzaiumar090@gmail.com',
                      style: TextStyle(
                        fontFamily: 'Mulish Semi Bold',
                        color: Color(0xffFF3951),
                      ),
                    ),
                    TextSpan(text: ' for\n verification.'),
                  ],
                ),
              ),

              SizedBox(height: 61),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  inPutBox(context, txt1),
                  SizedBox(width: 14),
                  inPutBox(context, txt2),
                  SizedBox(width: 14),
                  inPutBox(context, txt3),
                  SizedBox(width: 14),
                  inPutBox(context, txt4),
                  SizedBox(width: 14),
                  inPutBox(context, txt5),
                  SizedBox(width: 14),
                  inPutBox(context, txt6),
                ],
              ),

              SizedBox(height: 61),

              Center(
                child: CustomContainer(
                  height: 50,
                  width: 300,
                  tap: () {
                    Navigator.push(
                      context,
                     MaterialPageRoute(
                      builder: (context) => LogInScreen(),
                      )
                      );
                  },
                  icon: Icon(null),
                  
                  text: 'Verify',
                  ),
                ),
              

              SizedBox(height: 46),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Didnt receive any code?',
                    style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'Mulish Semi Bold',
                      color: Color(0xff000000),
                    ),
                  ),

                  SizedBox(width: 3),

                  resendTime == 0
                      ? InkWell(
                          onTap: () {
                            resendTime = 30;
                            startTimer();
                          },
                          child: Text(
                            'Resend',
                            style: TextStyle(
                              fontSize: 13,
                              fontFamily: 'Mulish Bold',
                              color: Color(0xff000000),
                            ),
                          ),
                        )
                      : SizedBox(),
                ],
              ),
              SizedBox(height: 6),

              resendTime != 0
                  ? Center(
                    child: Text(
                        'OTP available after ${strFormatting(resendTime)} seconds(s)',
                        style: TextStyle(fontSize: 14),
                      ),
                  )
                  : SizedBox(),

              SizedBox(height: 156),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Color(0xff000000),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpScreen()),
                      );
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
