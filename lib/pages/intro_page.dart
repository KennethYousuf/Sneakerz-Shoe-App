import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sneakerz/pages/home.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/pic1.jpg"), fit: BoxFit.cover),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 65.0),
              child: Row(
                children: [
                  Text(
                    "SNEA",
                    style: GoogleFonts.anton(
                        color: Colors.black,
                        fontSize: 70,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "K",
                    style: GoogleFonts.anton(
                        color: Colors.red,
                        fontSize: 70,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "ERZ",
                    style: GoogleFonts.anton(
                        color: Colors.black,
                        fontSize: 70,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 8.0,
              ),
              child: Text(
                "Brand new sneakers and custom kicks with premium quality ",
                style: GoogleFonts.anton(
                    color: Color.fromARGB(255, 227, 15, 15),
                    fontSize: 12,
                    fontWeight: FontWeight.normal),
              ),
            ),
          ],
        ),
        Container(
          alignment: Alignment.bottomCenter,
          child: TextButton(
            onPressed: () { Navigator.push(
              context, MaterialPageRoute(builder: (context) => Home()));},
            child: Text(
              "Shop Now",
              style: GoogleFonts.anton(color: Colors.black, fontSize: 18),
            ),
          ),
        )
      ]),
    );
  }
}
