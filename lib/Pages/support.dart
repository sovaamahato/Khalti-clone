import 'package:flutter/material.dart';
import 'package:khalti_clone/Pages/HomePage.dart';

import '../components/tiles_for_support_tab.dart';

class Support extends StatelessWidget {
  const Support({super.key});

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
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Help & Support",
              style: TextStyle(
                  color: Colors.purple,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10,),
            Text(
              " Customer Support, Feedbacks,FAQs",
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
            //links---------------
            TileForSupportTab(hinttext: "", name: "Facebook Messenger", icon: "lib/images/messenger.png",),
            TileForSupportTab(hinttext: "", name: "Facebook Messenger", icon: "lib/images/whatsapp.png",),
            TileForSupportTab(hinttext: "", name: "Facebook Messenger", icon: "lib/images/whatsapp.png",),
            TileForSupportTab(hinttext: "", name: "Facebook Messenger", icon: "lib/images/whatsapp.png",),
            TileForSupportTab(hinttext: "", name: "Facebook Messenger", icon: "lib/images/whatsapp.png",),
            TileForSupportTab(hinttext: "", name: "Facebook Messenger", icon: "lib/images/whatsapp.png",),

          ],
        ),
      ),
    );
  }
}
