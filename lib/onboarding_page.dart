import 'package:flutter/material.dart';
import 'package:private_project/Home.dart';
import 'package:private_project/pages/intro_1.dart';
import 'package:private_project/pages/intro_2.dart';
import 'package:private_project/pages/intro_3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  PageController page = PageController();
  bool onLast = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: page,
            children: [Intro_1(), Intro_2(), Intro_3()],
          ),
          Container(
            alignment: Alignment(0, 0.80),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  },
                  child: Text(
                    'Skip',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                SmoothPageIndicator(controller: page, count: 3),
                GestureDetector(
                  onTap: () {
                    page.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeIn,
                    );
                  },
                  child: Text(
                    "Next",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
