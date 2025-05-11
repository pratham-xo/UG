import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Intro_1 extends StatefulWidget {
  const Intro_1({super.key});

  @override
  State<Intro_1> createState() => _Intro_1State();
}

class _Intro_1State extends State<Intro_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LottieBuilder.asset('assets/animations/intro1.json', height: 300),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 14.0),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'Set your goals',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(height: 5,),
          Align(
            alignment: Alignment.center,
            child: Text('Crush your dreams one  goal \n at a time Set daily,\n weekly, or long-term \ngoals that match your vibe.',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
              
            ),),
          )
        ],
      ),
    );
  }
}
