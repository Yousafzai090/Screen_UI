// import 'dart:async';

import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:screen_ui/components/custom_container.dart';
import 'package:screen_ui/components/custom_text.dart';
import 'package:screen_ui/components/custom_text_form_field.dart';
import 'package:screen_ui/screens/signup_screen.dart';
// import 'package:screen_ui/screens/welcome_screen.dart';
import 'package:form_field_validator/form_field_validator.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreen();
}

class _LogInScreen extends State<LogInScreen> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _passwordVisible = true;
  bool? _isSelected = false;
  // bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
  }

  // void showTopSnackBar(BuildContext context, String message) {
  //   final snackBar = SnackBar(
  //     content: Text(message),
  //     behavior: SnackBarBehavior.floating,
  //     margin: EdgeInsets.only(
  //       bottom: MediaQuery.of(context).size.height - 150,
  //       right: 20,
  //       left: 20,
  //     ),
  //   );

  //   ScaffoldMessenger.of(context).showSnackBar(snackBar);
  // }

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
                Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      CustomTextFormField(
                        controller: _emailController,
                        autoValidateMode: AutovalidateMode.onUserInteraction,
                        validator: MultiValidator([
                          RequiredValidator(errorText: 'Email Required'),
                          EmailValidator(
                            errorText: 'Please enter a valid Email Address',
                          ),
                          PatternValidator(
                            r'.com',
                            errorText: '.com is required',
                          ),
                        ]).call,

                        styleHint: TextStyle(
                          fontFamily: 'Mulish Light',
                          color: Color(0xffaaaaaa),
                        ),
                      ),

                      SizedBox(height: 12),

                      CustomTextFormField(
                        obsecureText: !_passwordVisible,
                        controller: _passwordController,
                        autoValidateMode: AutovalidateMode.onUserInteraction,
                        // inputFormatter: <TextInputFormatter> [
                        //   FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                        // ],
                        validator: MultiValidator([
                          RequiredValidator(errorText: 'Password Required'),
                          MinLengthValidator(
                            8,
                            errorText: "Password must be at least 8 Characters",
                          ),
                          MaxLengthValidator(
                            20,
                            errorText: "Password can't Exceed 20 Characters",
                          ),
                          PatternValidator(
                            r'(?=.*?[#?!@$%^&*-])',
                            errorText:
                                "Password must have atleast one special character",
                          ),
                          PatternValidator(
                            r'[0-9]',
                            errorText: 'Enter atleast 1 digit',
                          ),
                        ]).call,
                        // scaffoldMessenger: ScaffoldMessenger.of(context),
                        hintText: 'Password',
                        suffixIcon: IconButton(
                          icon: Icon(
                            _passwordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onPressed: () {
                            setState(() {
                              _passwordVisible = !_passwordVisible;
                            });
                          },
                        ),
                        styleHint: TextStyle(
                          fontFamily: 'Mulish Light',
                          color: Color(0xffaaaaaa),
                        ),
                      ),
                    ],
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

                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formkey.currentState?.validate() ?? false) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: Colors.white,
                            content: Text(
                              'Validation Succesfull',
                              style: TextStyle(color: Color(0xff000000)),
                            ),
                            dismissDirection: DismissDirection.none,
                            behavior: SnackBarBehavior.floating,
                            margin: EdgeInsets.only(
                              bottom: MediaQuery.of(context).size.height - 100,
                              left: 20,
                              right: 20,
                            ),
                          ),
                        );
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => SignUpScreen(),
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: Color(0xffFF3951),
                            content: Text('Validation Failed. Check errors.'),
                            dismissDirection: DismissDirection.up,
                            behavior: SnackBarBehavior.floating,
                            margin: EdgeInsets.only(
                              bottom: MediaQuery.of(context).size.height - 100,
                              left: 16,
                              right: 16,
                            ),
                          ),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(300, 50),
                      backgroundColor: Color(0xffFF3951),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Next',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 252, 252, 254),
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 10),

                //Spacer(),
                // Center(
                //   child: CustomContainer(
                //     height: 50,
                //     width: 300,
                //     tap: () {
                //       Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //           builder: (context) => WelcomeScreen(),
                //         ),
                //       );
                //     },
                //     text: 'Next',
                //     styleText: TextStyle(
                //       fontSize: 20,
                //       fontFamily: 'Mulish Semi Bold',
                //       color: Colors.white,
                //     ),
                //   ),
                // ),
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
