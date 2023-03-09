import 'package:flutter/material.dart';
import 'package:khalti_clone/components/icon_box.dart';
import 'package:khalti_clone/components/squareiconbox_scrollable.dart';
import 'package:khalti_clone/main.dart';

import '../components/big_container.dart';
import '../components/my_app_bar.dart';
import '../components/square_border_iconbox.dart';
import 'events_page.dart';

class DashBoard extends StatelessWidget {
  // const DashBoard({super.key});

  List iconsList1 = [
    ["lib/images/Topup.png", "Topup"],
    ["lib/images/bulb.png", "electricity"],
    ["lib/images/tap.png", "Khanepani"],
    ["lib/images/in-love.png", "eSewa Care"],
    ["lib/images/internet.png", "Internet"],
  ];

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
                height: 20,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 3),
                child: Text(
                  "Recharge & Bill Paymets",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
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
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 3),
                child: Text(
                  "Featured Services",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: 80,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: iconsList1.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                        width: 100,
                        height: 100,
                        child: IconBox(
                          icon_name: iconsList1[index][1],
                          icon: iconsList1[index][0],
                        ));
                  },
                ),
              ),

              //instead of sized box to give color
              Container(
                color: Colors.grey[300],
                height: 10,
              ),
              //other features--------------------------------------------------
                Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 3),
                child: Text(
                  "Featured Services",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: 80,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: iconsList1.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                        width: 100,
                        height: 100,
                        child: IconBox(
                          icon_name: iconsList1[index][1],
                          icon: iconsList1[index][0],
                        ));
                  },
                ),
              ),
              Container(
                color: Colors.grey[300],
                height: 10,
              ),

              //--------------scrollable card horizontally-----------------
              //automatic scroll banauna bakii--
              Container(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4)),
              
              child: ClipRRect(borderRadius: BorderRadius.circular(10),child: Image.asset("lib/images/card.jpg")),
             );
                  },
                ),
              ),
              Container(
                color: Colors.grey[300],
                height: 10,
              ),

              //squareIconBox---------------------wala listview
                Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 3),
                child: Text(
                  "Featured Services",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SquareIconBoxScrollable(),
            ],
          ),
        ),
      ],
    ));
  }
}
