import 'package:flutter/material.dart';
import 'package:tourism/tour.dart';

class GridB extends StatelessWidget {
  GridB({super.key});

  final img = [
    "https://cf.bstatic.com/xdata/images/hotel/max1024x768/116271889.jpg?k=dcdd43b2eb4a49591a34b457ebc4e6ca30e16b9653ae7f5a1c1b98ca25663316&o=&hp=1",
    "https://cf.bstatic.com/xdata/images/hotel/max1024x768/31104741.jpg?k=06fb333155038d7ab6c571bda59aa32d313b5764e3ca59befa9ac932440fcad7&o=&hp=1",
    "https://cf.bstatic.com/xdata/images/hotel/max1024x768/258837362.jpg?k=3e8d56fda7aa9e19a656743c18636e6d959d84a75dcaf25ce1caaa1d57e486f1&o=&hp=1",
    "https://cf.bstatic.com/xdata/images/hotel/max1024x768/392051326.jpg?k=bc8725fe035f11588fcc461b49dc1e3e97134a357651adb3153e64d0df61a4d9&o=&hp=1",
    "https://cf.bstatic.com/xdata/images/hotel/max1024x768/400942948.jpg?k=e0c75e4329c7d32ae942bc6ab8c7279da3806c30d055a0c1f34992e8779694f7&o=&hp=1",
    "https://cf.bstatic.com/xdata/images/hotel/max1024x768/229744136.jpg?k=e54855a739325a8416c26a65120beb43671039d5e97fa5de957bffc3d035c29f&o=&hp=1",
  ];

  final place = [
    "Luxury  Appartment",
    "Furious Place",
    "Nature Love",
    "Golden Hotel",
    "Furious Place",
    "Furious Place",
  ];

  final no = ['1201','1202','1203','1204','1205','1206'];

  @override
  Widget build(BuildContext context) {
    return  Expanded(child: GridView.builder(
              itemCount: 6,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisExtent: 240), 
            itemBuilder: (context, index){
              return Padding(
                padding: const EdgeInsets.all(5.0),
                child: Stack(
                  children: [Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: ((context) {
                          return Tour();
                        })));
                      },
                      child: Image.network(img[index],fit: BoxFit.fill,height: 240,))),
                  ),
                  Positioned(
                left: 10,
                bottom: 20 ,
                  child: Text(place[index],style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,),),
                ),
                  Positioned(
                left: 10,
                top: 10 ,
                  child: Container(
                    child: Text(no[index]),color: Colors.white,),
                ),
                  ]
                ),
              );
            }));
  }
}