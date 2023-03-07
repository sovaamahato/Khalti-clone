import 'package:flutter/material.dart';

import 'HomePage.dart';

class Transactions extends StatelessWidget {
//  ort({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
            actions: [
              Icon(Icons.search,color: Colors.black,),
              SizedBox(width: 10,),
              Padding(
                padding: const EdgeInsets.only(right:10.0),
                child: Icon(Icons.download,color: Colors.black,),
              )
            ],
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column( crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Transaction History",
                  style: TextStyle(
                      color: Colors.purple,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  " Showing transactions of last 30 days",
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: MediaQuery.of(context).size.height*0.4,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset("lib/images/notifi.jpg",fit: BoxFit.cover,),
                ),
                Center(child: Text("No Transactions in last 30 days. Goto\n Search to view older transactions.",
                style: TextStyle(color: Colors.purple,fontWeight: FontWeight.bold),)),
      SizedBox(height: 25,),
      Container(
       width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(color: Colors.purple,borderRadius: BorderRadius.circular(4)),
        child: Center(child: Text("MODIFY SEARCH",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),)),)
        ]),
      ),
    );
  }
}