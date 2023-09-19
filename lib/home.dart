import 'package:flutter/material.dart';
import 'package:tourism/Comp/bar.dart';
import 'package:tourism/Comp/field.dart';
import 'package:tourism/Comp/gridbuild.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Bar(),
            Field(),

            SizedBox(height: 30,),
            
            Row(
              children: [
                Text("Popular Places",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
                Spacer(),
                Text("View All",style: TextStyle(color: Colors.grey[700], fontSize: 16, fontWeight: FontWeight.bold),),

            SizedBox(height: 40,),

              ],
            ),
            GridB()

          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ElevatedButton(onPressed: (){},
        style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))), 
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text("Explore Now"),
        )),
      ),
    );
  }
}