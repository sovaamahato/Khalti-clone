import 'package:flutter/material.dart';

class BankTab extends StatelessWidget {
  

  List listTileItems = [
        [
      Icons.house_siding_outlined,
      "Linked Bank account",
      "Add money by linking bank A/C number"
    ],
    [
      Icons.food_bank,
      "ebanking",
      "Use partner bank's eanking "
    ],
     [
      Icons.mobile_friendly_outlined,
      "Mobile Banking",
      "Use partner bank's Mobile App"
    ],
    [
      Icons.card_travel,
      "ATM Debit/Credit/SCT Cards",
      "Add using Card number and other details"
    ],
    [
      Icons.credit_score,
      "Connect IPS",
      "Use linked bank A/C in connect IPS"
    ],

    ];

  @override
  Widget build(BuildContext context) {
   return Padding(
     padding: const EdgeInsets.symmetric(horizontal:8.0,vertical: 15),
     child: Container(
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
   );
  }
}