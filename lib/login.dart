import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tourism/home.dart';

void main(){
  runApp(MaterialApp(home: LoginPage(),debugShowCheckedModeBanner: false,));
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(color: Colors.green,
            height:250,
            child: Image.asset("lib/images/seychelles-2893794_1280.jpg",fit: BoxFit.cover,)),

            Expanded(
              child: Container(color: Colors.blueGrey[100],width: double.infinity,padding: EdgeInsets.all(40),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                            SizedBox(height: 35,),
                    // Text("Login",style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
                    
                    GestureDetector(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MyHomePage())),
                      child: Container(
                        padding: EdgeInsets.all(20),
                        width: double.infinity,height: 400,
                        child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.blue),
                              child: Text("Login", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),),),
                    
                              SizedBox(height: 20,),
                    
                              Text("- or -"),
                    
                              SizedBox(height: 20,),
                              
                              Container(padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: const Color.fromARGB(255, 5, 82, 145)),
                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Login with Facebook", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),),
                                  Image.asset("lib/images/facebook.png",height: 30,),
                                ],
                              ),),
                              
                               SizedBox(height: 25,),
                              
                              Container(padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.blue[400]),
                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Login with Twitter", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),),
                                  Image.asset("lib/images/twitter.png",height: 30),
                                ],
                              ),),
                    
                               SizedBox(height: 25,),
                     
                              Container(padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.red),
                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Login with Google", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),),
                                  Image.asset("lib/images/google.png",height: 30,),
                                ],
                              ),),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
      ],)
    );
  }
}