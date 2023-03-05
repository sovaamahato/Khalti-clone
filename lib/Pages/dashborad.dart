

import 'package:flutter/material.dart';
import 'package:khalti_clone/main.dart';

import '../components/big_container.dart';
import '../components/my_app_bar.dart';
import 'events_page.dart';

class DashBoard extends StatelessWidget {
  // const DashBoard({super.key});
 

  @override
  Widget build(BuildContext context) {
    final double width =MediaQuery.of(context).size.width;
    return SingleChildScrollView(
        child: Column(
      children: [
        //appbar---
        MyAppBar(),
        
        //search bar container-----
        Container(
          padding: const EdgeInsets.all(8),
          width: width,
          height: 65,
          color: Colors.grey.shade300,
          child: Container(
            decoration: BoxDecoration(border:Border.all(color: Colors.pink,width: 1.0,),
            borderRadius: BorderRadius.circular(9)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal:8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Holi Ko Plans K Cha?",style: TextStyle(color: Colors.grey[800]),),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                return EventsPage();
              }));
                    },
                    child: Text("CLICK HERE!",style: TextStyle(color: Colors.pink,fontWeight: FontWeight.bold),)),
                ],
              ),
            ),
          ),
        ),
        //text---"Recharge and bill paymets"
        Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               SizedBox(height: 20,),
               Text("Recharge and bill paymets",),
               SizedBox(height: 20,),
              BigContainer()
              
              // Container(child: BigContainer()),
            ],
          ),
        ),
        //lots of icons containing box
      ],
    ));
  }
}
