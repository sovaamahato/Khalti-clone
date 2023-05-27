import 'package:flutter/material.dart';
import 'package:khalti_clone/Pages/HomePage.dart';

import '../components/tiles_for_support_tab.dart';

class SendMoneyPage extends StatelessWidget {
   List listTileItems = [
        [
      Icons.house_siding_outlined,
      "Send to Khalti User",
      "Transfer money to khalti friends"
    ],
    [
      Icons.food_bank,
      "Send to any Bank Account",
      "Transfer money to banks in Nepal"
    ],
     [
      Icons.mobile_friendly_outlined,
      "Send to Coop (Sahakari)",
      "Transfer money to Sahakari Apps"
    ],
   

    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text(" ",),
          
          foregroundColor: Colors.black,
        elevation: 0,
            ),
            body: Padding(
     padding: const EdgeInsets.symmetric(horizontal:8.0,vertical: 15),
     child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
       children: [
        Text(
                "Send Money",
                style: TextStyle(
                    color: Colors.purple,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                " Transfererable Balance Rs. 0",
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              ),
              SizedBox(
                height: 15,
              ),
         Container(
                  height: 235,
                  child: ListView.builder(
                      itemCount: listTileItems.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          leading: Icon(listTileItems[index][0],color: Colors.purple,),
                          title: Text(listTileItems[index][1]),
                          subtitle: Text(listTileItems[index][2]),
                          trailing: Icon(Icons.arrow_forward_ios,size: 20,color: Colors.purple,),
                        );
                      }),
                ),
       ],
     ),
   ),
            );

  }
}
