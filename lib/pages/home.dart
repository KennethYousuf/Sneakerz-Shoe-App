import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        onPressed: () {
          
        },
        icon: Icon(Icons.menu_rounded,
        color: Colors.black,),
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
              Icon(Icons.home,
            color: Colors.black,
            ),
            Icon(Icons.shopping_bag_rounded,
            color: Colors.black,
            ),
          ],
        )
      ],
        title:Row(
          mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "SNEA",
                    style: GoogleFonts.anton(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "K",
                    style: GoogleFonts.anton(
                        color: Colors.red,
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "ERZ",
                    style: GoogleFonts.anton(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),),
             
    );
  }
}