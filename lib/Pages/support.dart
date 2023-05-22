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
        title: Text(" "),
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
                "Help & Support",
                style: TextStyle(
                    color: Colors.purple,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                " Customer Support, Feedbacks,FAQs",
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              //links---------------
              TileForSupportTab(
                hinttext: "",
                name: "Facebook Messenger",
                icon: "lib/images/messenger.png",
              ),
              TileForSupportTab(
                hinttext: "(WhatsApp - Chat Only)",
                name: "9801165",
                icon: "lib/images/whatsapp.png",
              ),
              TileForSupportTab(
                hinttext: "(Viber - Chat Only)",
                name: "khalti.com/viber",
                icon: "lib/images/viber.png",
              ),
              TileForSupportTab(
                hinttext: "(Toll Free)",
                name: "011111111",
                icon: "lib/images/old-phone.png",
              ),
              TileForSupportTab(
                hinttext: "Landline",
                name: "09292",
                icon: "lib/images/old-phone.png",
              ),
              TileForSupportTab(
                hinttext: "(Email Address)",
                name: "support@khalti.com",
                icon: "lib/images/old-phone.png",
              ),
              TileForSupportTab(
                hinttext: "(WhatsApp - Chat Only)",
                name: "Khalti Bluebook Service",
                icon: "lib/images/whatsapp.png",
              ),
              //line
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Divider(
                  thickness: 0.5,
                  color: Colors.grey[500],
                ),
              ),

              SizedBox(
                height: 15,
              ),
              ListTile(
                leading: Icon(
                  Icons.chat_bubble_outline,
                  color: Colors.purple,
                ),
                title: Text("FAQs"),
                subtitle: Text("Get help from FAQs"),
                trailing: Icon(Icons.arrow_forward_ios_sharp,size: 20,),
              ),
              ListTile(
                leading: Icon(
                  Icons.chat_bubble_outline,
                  color: Colors.purple,
                ),
                title: Text("Report Issues"),
                subtitle: Text("We would love to hear from you"),
                trailing: Icon(Icons.arrow_forward_ios_sharp,size: 20,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
