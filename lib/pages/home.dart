import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        leading: Builder(builder: (context) {
          return IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(
              Icons.menu_rounded,
              color: Colors.black,
            ),
          );
        }),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.home,
                color: Colors.black,
              ),
              Icon(
                Icons.shopping_bag_rounded,
                color: Colors.black,
              ),
            ],
          )
        ],
        title: Row(
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
                  color: Colors.red, fontSize: 28, fontWeight: FontWeight.bold),
            ),
            Text(
              "ERZ",
              style: GoogleFonts.anton(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[350],
        child: Column(children: [
          DrawerHeader(

              child: Text(
                'Categories',
              style:  GoogleFonts.anton(
                  color: Colors.black,
                   fontSize: 28,
                    fontWeight: FontWeight.normal),),),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(
                  color: Colors.grey,
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left:10.0),
                child: ListTile(
                title: Text("Men",
                style: GoogleFonts.anton(
                  color: Colors.black,
                  fontSize: 18
                ),),
                ),
              ),
               Padding(
                padding: const EdgeInsets.only(left:10.0),
                child: ListTile(
                title: Text("Women",
                style: GoogleFonts.anton(
                  color: Colors.black,
                  fontSize: 18
                ),),
                ),
              )
        ]),
      ),
    );
  }
}
