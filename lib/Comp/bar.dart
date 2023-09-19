import 'package:flutter/material.dart';

class Bar extends StatelessWidget {
  const Bar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.menu),
                  Row(
                    children: [
                      Text("Go",style: TextStyle(color: Colors.blue,fontSize: 19, fontWeight: FontWeight.bold)),
                      Text("Fast",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19))
                    ],
                  ),
                  CircleAvatar(backgroundColor: Colors.blue,)
                ],
              ),
            );
  }
}