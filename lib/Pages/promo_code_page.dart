import 'package:flutter/material.dart';

import 'HomePage.dart';

class PromoCodesPage extends StatelessWidget {
  const PromoCodesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return MyHomePage();
              }));
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        elevation: 0,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0, bottom: 10, left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Promocodes",
                style: TextStyle(
                    color: Colors.purple,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
  ),
  Text("Check all promocodes",style: TextStyle(color: Colors.grey),),
  SizedBox(height: 15,),
  Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [

    Icon(Icons.four_g_plus_mobiledata_sharp,color: Colors.grey,),
    SizedBox(width: 5,),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Text("Topup Coupon",style: TextStyle(color: Colors.black,fontSize: 18),),
      Text("Coupon worth 20% upto Rs.50",style: TextStyle(color: Colors.black),),

    ],),
    SizedBox(width: 20,),
    Container(
      decoration: BoxDecoration(color: Colors.grey[500],
      borderRadius: BorderRadius.circular(8)),
      child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text("Expired"),
    ),)
  ],),
SizedBox(height: 17,),
  Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Text("Valid Till: 28 Feb 2023, 11:30 PM ",style: TextStyle(color: Colors.grey[600]),),
      SizedBox(width: 10,),
      Text("SEE MORE  v",style: TextStyle(color: Colors.grey[600]),)
    ],
  )
  ]))));
  }
}