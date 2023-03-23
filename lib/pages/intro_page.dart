import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      decoration: BoxDecoration(
        image:DecorationImage(
          image: AssetImage("images/1.jpg"),
          fit: BoxFit.cover),
          
         ),
        
      ),
    );
  }
}