import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Intro_2 extends StatelessWidget {
  const Intro_2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text(' Fuel your journey forward,\n with daily doses of motivation',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
          SizedBox(height: 4,),
          LottieBuilder.asset('assets/animations/intro2.json')
        ],
      ),
    );
  }
}