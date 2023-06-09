import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:sneakerz/components/shoe_tile.dart';
import 'package:sneakerz/model/cart.dart';
import 'package:sneakerz/model/shoe.dart';
import 'package:sneakerz/pages/cart_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //add shoe to cart
  void addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addItemsToCart(shoe);

    // alert msg on adding shoe to cart
    showDialog(
        context: context,
        builder: (context) =>
          AlertDialog(
            title: Text("Successfully Added!"),
            content: Text("Check your cart"),
          )
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white38,
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
                IconButton(
                  onPressed: () => Navigator.push(
                                      context,
                  MaterialPageRoute(builder: (context) => const Home()),
                  ), icon: Icon(
                    Icons.home_outlined,
                    color: Colors.black,
                  ),
                 
                ),
                 IconButton(
                  onPressed: () => Navigator.push(
                                      context,
                  MaterialPageRoute(builder: (context) => CartPage()),
                  ), icon: Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.black,
                  ),
                 
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
                        'SNEAKERZ',
                        style: GoogleFonts.aboreto(
                            color: Colors.black,
                            fontSize: 28,
                            fontWeight: FontWeight.w900),
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
                          "Home",
                          style: GoogleFonts.aBeeZee(
                              color: Colors.black, fontSize: 18),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: ListTile(
                        title: Text(
                          "About",
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
                      style: GoogleFonts.aBeeZee(
                          color: Colors.black, fontSize: 18),
                    ),
                  ),
                ),
              ]),
        ),
        body: Consumer<Cart>(
          builder: (context, value, child) => Column(
            children: [
              Container(
                padding: EdgeInsets.all(12),
                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey[300]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Search",
                      style: TextStyle(color: Colors.black),
                    ),
                    Icon(
                      Icons.search_rounded,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Top Products",
                      style:
                          GoogleFonts.anton(color: Colors.black, fontSize: 20),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              // List of shoes
              Expanded(
                  child: ListView.builder(
                      itemCount: 5,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        //get a shoe from shop list
                        Shoe shoe = value.getShoeList()[index];

                        return ShoeTile(
                          shoe: shoe,
                          onTap: () => addShoeToCart(shoe),
                        );
                      })),

              const Padding(
                padding: const EdgeInsets.only(top: 25.0, right: 35, left: 35),
                child: Divider(
                  color: Colors.white,
                ),
              )
            ],
          ),
        ));
  }
}
