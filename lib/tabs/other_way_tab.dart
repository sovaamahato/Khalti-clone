import 'package:flutter/material.dart';

class OtherWayTab extends StatelessWidget {
  

  List listTileItems = [
        [
      Icons.house_siding_outlined,
      "Khalti Sewa Kendra Pasals",
      "Visit nearby Khalti Pasals"
    ],
    [
      Icons.food_bank,
      "Khalti Bnak Deposit Vouchers",
      "Visit nearby partner bank to deposit "
    ],
     [
      Icons.mobile_friendly_outlined,
      "Request from Khalti Friends",
      "Ask Khalti Users for Money"
    ],
    [
      Icons.card_travel,
      "WorldLink Counters",
      "Visit nearby WorldLink Counters to add money"
    ],
    [
      Icons.credit_score,
      "Kiosk Machines",
      "Visit Paypoint recharge machines"
    ],
    [
      Icons.credit_score,
      "Bhatbhateni Money Transfer(BMT)",
      "Visit BMT counters to add money"
    ],
    [
      Icons.credit_score,
      "City Express Agents",
      "Visit city Express Agents to add money"
    ],
    [
      Icons.front_hand_outlined,
      "Receive Remittance",
      "Receive domestic & international remittance in Khalti"
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