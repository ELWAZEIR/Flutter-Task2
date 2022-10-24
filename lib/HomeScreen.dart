import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(child:
         Column(
           children: [
            SizedBox(height: 10,),
            Image.asset("assets/img/wecome.png"),
            SizedBox(height: 20,),
             Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Text('pizza Hossam  ',style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 255, 255, 255)),)
              ),
              SizedBox(height: 100,),
              Icon(Icons.favorite_rounded,size: 50,color: Color.fromARGB(255, 70, 244, 54),)
           ],
         )),
      ),
    );
  }
}
