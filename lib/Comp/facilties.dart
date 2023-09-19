import 'package:flutter/material.dart';

class Facilities extends StatelessWidget {
  const Facilities({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(color: Colors.grey.shade400)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                    Row(children: [
                      Icon(Icons.local_parking_rounded, color: Colors.blue,),
                      SizedBox(width: 3,),
                      Text("Free Parking",style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 13),)
                    ],),
            
                    Row(children: [
                      Icon(Icons.fitness_center_sharp, color: Colors.blue),
                      SizedBox(width: 4,),
                      Text("Fitness Centre",style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 13))
                    ],),
                    
                    Row(children: [
                      Icon(Icons.wifi, color: Colors.blue),
                      SizedBox(width: 4,),
                      Text("Free Wifi",style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 13))
                    ],),
                  ],),
            
                SizedBox(height: 10,),
            
                  Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(children: [
                      Icon(Icons.restaurant, color: Colors.blue,),
                      SizedBox(width: 4,),
                      Text("Restaurant",style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 13),)
                    ],),
                    
                    Row(children: [
                      Icon(Icons.pool, color: Colors.blue),
                      SizedBox(width: 4,),
                      Text("Swimming pool",style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 13))
                    ],),
            
                    Row(children: [
                      Icon(Icons.spa, color: Colors.blue),
                      SizedBox(width: 4,),
                      Text("Spa",style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 13))
                    ],),
                    ],
                  )
                ],
              ),
            );
  }
}