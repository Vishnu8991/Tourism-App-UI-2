import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              height: 105,
              // decoration: BoxDecoration(color: Colors.red),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcomhotel by ITC Hotels",style: GoogleFonts.heebo(textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 19)),
                        ),
                        SizedBox(height: 3,),
                        Text(
                          "Bengaluru, India",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)
                        ),
                        SizedBox(height: 5,),
                        Row(children: [
                          Icon(Icons.star,size: 18,color: Colors.yellow,),
                          Icon(Icons.star,size: 18,color: Colors.yellow,),
                          Icon(Icons.star,size: 18,color: Colors.yellow,),
                          Icon(Icons.star,size: 18,color: Colors.yellow,),
                          Icon(Icons.star,size: 18,color: Colors.yellow,),
                  
                          SizedBox(width: 10,),
                  
                          Text("4.8 Rating",style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),)
                        ],)
                      ],
                    ),
                  ),
                  SizedBox(width: 6,),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network("https://cf.bstatic.com/xdata/images/hotel/max1024x768/116271889.jpg?k=dcdd43b2eb4a49591a34b457ebc4e6ca30e16b9653ae7f5a1c1b98ca25663316&o=&hp=1"))
                ],
              ),
            );
  }
}