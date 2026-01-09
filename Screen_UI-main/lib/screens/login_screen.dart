import 'package:flutter/material.dart';
import 'package:screen_ui/components/custom_container.dart';
import 'package:screen_ui/components/custom_text.dart';
import 'package:screen_ui/components/custom_text_form_field.dart';
import 'package:screen_ui/screens/signup_screen.dart';
import 'package:screen_ui/screens/welcome_screen.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreen();
}

class _LogInScreen extends State<LogInScreen> {
  bool? _isSelected = false;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xffeeeeee),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 300,
                  width: screenWidth,
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 60,
                        height: 100,
                        left: 85,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(),

                            CustomText(
                              text: 'sign in to access your account',
                              styleText: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Mulish Light',
                                color: Color(0xff252525),
                              ),
                            ),
                          ],
                        ),
                      ),

                      Positioned(
                        left: 60,
                        child: Image(
                          height: 260,
                          width: 321,
                          image: AssetImage('assets/Log in.png'),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20),

                CustomTextFormField(
                  styleHint: TextStyle(
                    fontFamily: 'Mulish Light',
                    color: Color(0xffaaaaaa),
                  ),
                ),

                SizedBox(height: 12),

                CustomTextFormField(
                  hintText: 'Password',
                  suffixIcon: Icon(Icons.visibility_off_outlined),
                  styleHint: TextStyle(
                    fontFamily: 'Mulish Light',
                    color: Color(0xffaaaaaa),
                  ),
                ),

                SizedBox(height: 10),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                      value: _isSelected,
                      onChanged: (value) {
                        setState(() {
                          _isSelected = value;
                        });
                      },
                      side: BorderSide(width: 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),

                    Center(
                      child: CustomText(
                        text: 'Remember me',
                        styleText: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Mulish Regular',
                          color: Color(0xff000000),
                        ),
                      ),
                    ),

                    Spacer(),

                    CustomText(
                      text: 'Forget Password?',
                      styleText: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Mulish Regular',
                        color: Color(0xffFF3951),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 170),

                //Spacer(),
                Center(
                  child: CustomContainer(
                    height: 50,
                    width: 300,
                    tap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => WelcomeScreen(),
                        ),
                      );
                    },
                    text: 'Next',
                    styleText: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Mulish Semi Bold',
                      color: Colors.white,
                    ),
                    
                  ),
                ),
                SizedBox(height: 10),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                      text: 'New member ?',
                      styleText: TextStyle(
                        fontSize: 13,
                        fontFamily: 'Mulish regular',
                        color: Color(0xff000000),
                      ),
                    ),

                    SizedBox(width: 3),

                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpScreen(),
                          ),
                        );
                      },
                      child: CustomText(
                        text: 'Register now',
                        styleText: TextStyle(
                          fontSize: 13,
                          fontFamily: 'Mulish Bold',
                          color: Color(0xffFF3951),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
