import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Intro_3 extends StatelessWidget {
  const Intro_3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Text('Unlock your potential,\none step at a time',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
          ),
          SizedBox(height: 4,),
          LottieBuilder.asset('assets/animations/intro3.json')
        ],
      ),
    );
  }
}