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
        backgroundColor: Color.fromARGB(255, 158, 158, 158),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  DrawerHeader(
                    child: Text(
                      'CATEGORIES',
                      style: GoogleFonts.aboreto(
                          color: Colors.black,
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Divider(
                      color: Color.fromARGB(255, 21, 20, 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: ListTile(
                      title: Text(
                        "Men",
                        style: GoogleFonts.aBeeZee(
                            color: Colors.black, fontSize: 18),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: ListTile(
                      title: Text(
                        "Women",
                        style: GoogleFonts.aBeeZee(
                            color: Colors.black, fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0, bottom: 25),
                child: ListTile(
                  leading: Icon(
                    Icons.logout_rounded,
                    color: Colors.black,
                  ),
                  title: Text(
                    "Logout",
                    style:
                        GoogleFonts.aBeeZee(color: Colors.black, fontSize: 18),
                  ),
                ),
              ),
            ]),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.symmetric(horizontal: 25,vertical: 15),
            
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.grey[300]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Text("Search",
                style: TextStyle(
                  color: Colors.black),),
                Icon(Icons.search_rounded,
                color: Colors.black,),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Top Products",
                style: GoogleFonts.anton(
                  color: Colors.black,
                  fontSize: 20
                ),),
                Text("See all",
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold
                ),)
              ],
            ),
          )
        ],
      ),
    );
  }
}
