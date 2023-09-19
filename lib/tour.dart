import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tourism/Comp/about.dart';
import 'package:tourism/Comp/facilties.dart';



void main(){
  runApp(MaterialApp(home: Tour(),debugShowCheckedModeBanner: false,));
}

class Tour extends StatelessWidget {
  const Tour({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(backgroundColor: Colors.grey[100],
        body: Padding(
          padding: const EdgeInsets.only(bottom: 10, left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              About(),
    
              SizedBox(height: 2,),
              
              Text("About ITC Hotel",style: GoogleFonts.heebo(textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),)),
              
              SizedBox(height: 5,),
              
              Text(
                '''At Welcomhotel by ITC Hotels, Richmond Road, Bengaluru you will find a multi-cuisine restaurant, WelcomCafe Jacaranda, which serves Breakfast, Lunch, and Dinner.''',style: TextStyle(height: 1.5,color: Colors.grey[600], fontWeight: FontWeight.bold, fontSize: 14),
              ),
              
              SizedBox(height: 15,),
    
              Text("Special Facilities",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
    
              SizedBox(height: 8),
    
              Facilities(),
    
              SizedBox(height: 8,),
    
              Center(
                child: Container(padding: EdgeInsets.all(5),height: 210,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network("https://cf.bstatic.com/xdata/images/hotel/max1024x768/31104741.jpg?k=06fb333155038d7ab6c571bda59aa32d313b5764e3ca59befa9ac932440fcad7&o=&hp=1")),
                ),
              ),
    
              SizedBox(height: 10,),
    
              Text("Availability",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
    
              SizedBox(height: 10,),
    
              Container(
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(child: Text("Club"),padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(color: Colors.yellow,),),
                    ),
    
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(child: Text("Deluxe"),padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(color: Colors.yellow,),),
                    ),
                    
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(child: Text("Superior"),padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(color: Colors.yellow,),),
                    ),
                    
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(child: Text("Suite"),padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(color: Colors.yellow),),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(bottom: 8, left: 15, right: 15),
          child: ElevatedButton(onPressed: (){}, 
          style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
          child: Text("View More")),
        ),
      ),
    );
  }
}