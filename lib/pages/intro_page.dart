import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [Container(
        decoration: BoxDecoration(
          image:DecorationImage(
            image: AssetImage("images/1.jpg"),
            fit: BoxFit.cover),
            
           ),
          
        ),
         Center(
           child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text("SN",
                    
               style: TextStyle(
                fontSize: 80,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 235, 19, 4)
               ),),
                 Text("EA",
                    
               style: TextStyle(
                fontSize: 80,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 235, 19, 4)
               ),),
                 Text("KERZ",
                    
               style: TextStyle(
                fontSize: 80,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 235, 19, 4)
               ),),
             ],
           ),
         )
        ]
      ),
    );
  }
}