import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.white,
      appBar: AppBar(
        title: Text('HomeScreen'),
      ),
      body: Center(child: Icon(Icons.house,color: Colors.black,)),
    );
  }
}