import 'package:flutter/material.dart';

import 'HomePage.dart';

class Menu extends StatelessWidget {
  // const Support({super.key});

  List listTileItems = [
    //leading image,title, subtitle
    [
      Icons.question_mark_outlined,
      "Khalti Quiz",
      "Play khalti Quiz & win exciting prizes everyday"
    ],
    [
      Icons.attach_money_outlined,
      "My Payments",
      "View Your saved payments"
    ],
    [
      Icons.question_mark_outlined,
      "My Saved Accounts",
      "View your linked & saved accounts"
    ],
    [
      Icons.question_mark_outlined,
      "My Bookings",
      "view your bookings history"
    ],
    [
      Icons.question_mark_outlined,
      "Cashback & Offers",
      "Recent Offers,Khalti Points & Cashbacks"
    ],
    [
      Icons.poll_outlined,
      "Transaction Limits",
      "view your transaction limits"
    ],
    [
      Icons.phone_in_talk_sharp,
      "Help & Support",
      "Customer Support & FAQs"
    ],
    [
      Icons.airplane_ticket_outlined,
      "Coupen",
      "Redeem promocode & get Khalti balance"
    ],
   
    
  ];

    List listTileItems2 = [
        [
      Icons.person_add,
      "Refer Consumer & Earn",
      "Add & view consumer earnings"
    ],
    [
      Icons.playlist_add_check_circle_outlined,
      "Khalti Points",
      "Redeem Khalti Points for various offers"
    ],
     [
      Icons.settings_outlined,
      "Settings",
      "Accounts,Security, Payments,Notifications,Language,External Links & General"
    ],

    ];
    List listTileItems3 = [
        [
      Icons.info_outline_rounded,
      "About Khalti",
      "Know more about us"
    ],
    [
      Icons.download,
      "Check for Updates",
      "Spp version 3.19.00"
    ],
     [
      Icons.login_outlined,
      "Logout",
      "Logout from your Khalti account"
    ],

    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            // Navigator.pop(context);
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return MyHomePage();
            }));
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //profile and balance wala row-------------

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  height: 140,
                  width: MediaQuery.of(context).size.width * 0.35,
                  color: Colors.amber,
                  child: Image.asset("lib/images/no_profile.jpg",
                  fit: BoxFit.cover,),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.60,
                  height: 140,
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(
                          Icons.wallet,
                          color: Colors.purple,
                        ),
                        title: Row(
                          children: [
                            Text(
                              "Rs.",
                              style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "0",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            Icon(
                              Icons.refresh,
                              color: Colors.purple,
                            )
                          ],
                        ),
                        subtitle: Text("Khalti Balance"),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.vertical_align_center_sharp,
                          color: Colors.purple,
                        ),
                        title: Row(
                          children: [
                            Text(
                              "KP ",
                              style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "0",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        subtitle: Text("Khalti Points"),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),

          //view profile text-----------
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              "VIEW PROFILE",
              style: TextStyle(
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ),
          SizedBox(
            height: 10,
          ),

          Divider(
            color: Colors.grey,
            endIndent: 5,
          ),

          SizedBox(
            height: 14,
          ),

          //name phone no wala box------------------
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
                width: 200,
                child: Text(
                  "Sova Kumari Kushwaha",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                )),
          ),
          SizedBox(
            height: 10,
          ),

          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.grey.shade400,
                spreadRadius: 1,
                blurRadius: 3,
                offset: const Offset(0, 5),
              ),
              BoxShadow(
                color: Colors.grey.shade100,
                offset: const Offset(0.1, 0),
              )
            ]),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 17, right: 8, left: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "9804391172",
                    style: TextStyle(
                      color: Colors.grey[900],
                      fontSize: 19,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Color.fromARGB(255, 242, 205, 248)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 15),
                      child: Text(
                        "FILL KYC",
                        style: TextStyle(
                            color: Colors.purple, fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          //green image box-------------
          SizedBox(
            height: 10,
          ),
          //----------------- pic card
          Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 8),
            child: Image.asset("lib/images/card.jpg"),
          ),
          SizedBox(
            height: 20,
          ),
          //listtilesssssss--------------
          Container(
            height: 500,
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
          // SizedBox(
          //   height: 10,
          // ),

          Divider(
            color: Colors.grey,
            endIndent: 5,
          ),

          SizedBox(
            height: 14,
          ),
// line pxi ko listTiless--
          Container(
            height: 235,
            child: ListView.builder(
                itemCount: listTileItems2.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: Icon(listTileItems2[index][0],color: Colors.purple,),
                    title: Text(listTileItems2[index][1]),
                    subtitle: Text(listTileItems2[index][2]),
                    trailing: Icon(Icons.arrow_forward_ios,size: 20,color: Colors.purple,),
                  );
                }),
          ),

          // SizedBox(
          //   height: 10,
          // ),

          Divider(
            color: Colors.grey,
            endIndent: 5,
          ),

          // SizedBox(
          //   height: 14,
          // ),
          // line pxi ko listTiless--
          Container(
            height: 235,
            child: ListView.builder(
                itemCount: listTileItems3.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: Icon(listTileItems3[index][0],color: Colors.purple,),
                    title: Text(listTileItems3[index][1]),
                    subtitle: Text(listTileItems3[index][2]),
                    trailing: Icon(Icons.arrow_forward_ios,size: 20,color: Colors.purple,),
                  );
                }),
          ),
        ],
      )),
    );
  }
}
