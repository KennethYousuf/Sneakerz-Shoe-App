import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sneakerz/model/shoe.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  ShoeTile({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // image
          ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(shoe.imagepath)),
          //description
          Text(
            shoe.description,
            style: GoogleFonts.aBeeZee(color: Colors.black26),
          ),
          Padding(
            padding: const EdgeInsets.only(left:25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //shoe name
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text(shoe.name,
                  style: GoogleFonts.bebasNeue(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '\Rs '+ shoe.price,
                  style: GoogleFonts.bebasNeue(
                    color: Colors.black
                  ),)
                ],),
          
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration:const BoxDecoration(color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12)
                  )),
                  child: const Icon(Icons.add,
                  ),
                )
                //add button
              ],
            ),
          )
        ],
      ),
    );
  }
}
