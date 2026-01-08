import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 254, 254, 254),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 254, 254, 254),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 130 ,horizontal: 17.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome to Home',
              style: TextStyle(
                fontSize: 24,
                fontFamily: 'Mulish Extra Bold',
                color: Color(0xff252525)
              ),
            ),
        
            SizedBox(
              height: 105,
            ),
        
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                  height: 155,
                  width: 300,
                  image:
                   AssetImage('assets/Welcome.png'),
                          ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}