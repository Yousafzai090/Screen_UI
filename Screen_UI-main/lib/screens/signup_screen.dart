import 'package:flutter/material.dart';
import 'package:screen_ui/components/custom_container.dart';
import 'package:screen_ui/screens/login_screen.dart';
import 'package:screen_ui/screens/verification_screen.dart';
import 'package:screen_ui/components/custom_text.dart';
import 'package:screen_ui/components/custom_text_form_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => SignupScreen();
}

class SignupScreen extends State<SignUpScreen> {
  bool? _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xffeeeeee),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 235,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 30,
                      height: 64,
                      left: 90,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: 'Get Started',
                            styleText: TextStyle(
                              fontSize: 24,
                              fontFamily: 'Mulish Extra Bold',
                            ),
                          ),
                          CustomText(
                            text: 'by creating a free Account.',
                            styleText: TextStyle(
                              fontSize: 14,
                              fontFamily: 'mulish Light',
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
                        image: AssetImage('assets/Sign Up.png'),
                      ),
                    ),
                  ],
                ),
              ),

              CustomTextFormField(
                hintText: 'Full Name',
                suffixIcon: Icon(
                  Icons.account_circle_outlined,
                  color: Color(0xff848081),
                ),
                styleHint: TextStyle(
                  fontFamily: 'Mulish Light',
                  color: Color(0xff848081),
                ),
              ),
              SizedBox(height: 10),

              CustomTextFormField(
                hintText: 'Valid Email',
                suffixIcon: Icon(
                  Icons.email_outlined,
                  color: Color(0xff848081),
                ),
                styleHint: TextStyle(
                  fontFamily: 'Mulish Light',
                  color: Color(0xff848081),
                ),
              ),

              SizedBox(height: 10),

              CustomTextFormField(
                hintText: 'Phone Number',
                suffixIcon: Icon(
                  Icons.phone_iphone_outlined,
                  color: Color(0xff848081),
                ),
                styleHint: TextStyle(
                  fontFamily: 'Mulish Light',
                  color: Color(0xff848081),
                ),
              ),

              SizedBox(height: 10),
              CustomTextFormField(
                hintText: 'Strong Password',
                suffixIcon: Icon(
                  Icons.visibility_off_outlined,
                  color: Color(0xff848081),
                ),
                styleHint: TextStyle(
                  fontFamily: 'Mulish Light',
                  color: Color(0xff848081),
                ),
              ),

              SizedBox(height: 3),

              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
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

                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 9,
                          fontFamily: 'Mulish Regular',
                          color: Color(0xff000000),
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'By chechking the box you agree to our ',
                          ),
                          TextSpan(
                            text: 'Terms',
                            style: TextStyle(color: Color(0xffFF3951)),
                          ),
                          TextSpan(text: ' and'),
                          TextSpan(
                            text: ' Conditions',
                            style: TextStyle(color: Color(0xffFF3951)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),

              Center(
                child: CustomContainer(
                  height: 50,
                  width: 300,
                  tap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => VerificationScreen(),
                        ),
                      );
                    },

                ),
              ),

              SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    text: 'Already a member?',
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
                        MaterialPageRoute(builder: (context) => LogInScreen()),
                      );
                    },
                    child: CustomText(
                      text: 'Login',
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
    );
  }
}
