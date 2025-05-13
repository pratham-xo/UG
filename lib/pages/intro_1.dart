import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Intro_1 extends StatelessWidget {
  const Intro_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Set your goals',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
          SizedBox(height: 4,),
          LottieBuilder.asset('assets/animations/intro1.json')
        ],
      ),
    );
  }
}