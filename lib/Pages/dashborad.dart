import 'package:flutter/material.dart';
import 'package:khalti_clone/components/automzatic_scroll_card.dart';
import 'package:khalti_clone/components/icon_box.dart';
import 'package:khalti_clone/components/services_scrollable.dart';
import 'package:khalti_clone/components/squareiconbox_scrollable.dart';
import 'package:khalti_clone/components/vendor_company.dart';
import 'package:khalti_clone/main.dart';

import '../components/big_container.dart';
import '../components/my_app_bar.dart';
import '../components/scrollable_goverment_services.dart';
import '../components/square_border_iconbox.dart';
import 'events_page.dart';

class DashBoard extends StatelessWidget {
  // const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
        child: Column(
      children: [
        //appbar---
        MyAppBar(),

        //---------------search bar container-----
        Container(
          padding: const EdgeInsets.all(8),
          width: width,
          height: 65,
          color: Colors.grey.shade300,
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.pink,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(9)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Holi Ko Plans K Cha?",
                    style: TextStyle(color: Colors.grey[800]),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return EventsPage();
                        }));
                      },
                      child: Text(
                        "CLICK HERE!",
                        style: TextStyle(
                            color: Colors.pink, fontWeight: FontWeight.bold),
                      )),
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
              SizedBox(
                height: 10,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 3),
                child: Text(
                  "Recharge & Bill Paymets",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              // SizedBox(
              //   height: 8,
              // ),
              //-------------------lots of icons containing box------------------
              BigContainer(),
              //instead of sized box to give color
              Container(
                color: Colors.grey[300],
                height: 10,
              ),

              //-----------one card-----------------------
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4)),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset("lib/images/card.jpg")),
              ),

              //instead of sized box to give color
              Container(
                color: Colors.grey[300],
                height: 10,
              ),

              //--------------listview horizontally scrollable-------
              ScrollableServices(
                title: "Featured Services",
              ),

              //instead of sized box to give color
              Container(
                color: Colors.grey[300],
                height: 10,
              ),
              //other features--------------------------------------------------
              ScrollableServices(
                title: "Other services",
              ),
              Container(
                color: Colors.grey[300],
                height: 10,
              ),

              //--------------scrollable card horizontally-----------------
              //automatic scroll banauna bakii--

              AutomaticScrollCard(),
              //instead of sized box to give color
              Container(
                color: Colors.grey[300],
                height: 10,
              ),

              //squareIconBox---------------------wala listview

              SquareIconBoxScrollable(),
              //instead of sized box to give color
              Container(
                color: Colors.grey[300],
                height: 10,
              ),
              ScrollableGovernmentServices(),
              //instead of sized box to give color
              Container(
                color: Colors.grey[300],
                height: 10,
              ),
              VendorCompany(),

              //-----------one card-----------------------
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4)),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset("lib/images/card2.jpg")),
              ),
              //online acceptance--------------------------
              ScrollableServices(
                title: "We're accepted Online At",
                title2: "SEE ALL",
              ),
//instead of sized box to give color
              Container(
                color: Colors.grey[300],
                height: 10,
              ),
              SizedBox(height: 10,),

              ListTile(
                leading: Icon(Icons.headphones),
                title: Text("Khalti Help & Support"),
                subtitle: Text(
                  "Facing problems? Get quick support on your queries",
                  style: TextStyle(fontSize: 12.5),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right:40.0,left: 45),
                child: Divider(color: Colors.grey,),
              ),
ListTile(
                leading: Icon(Icons.lock),
                title: Text("Secure Khalti App & Transactions"),
                subtitle: Text(
                  "For 2-Step verification use Khalti MPIN or biometric",
                  style: TextStyle(fontSize: 12.5),
                ),
              ),
              SizedBox(height: 10,)
            ],
          ),
        ),
      ],
    ));
  }
}
