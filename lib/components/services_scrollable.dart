import 'package:flutter/material.dart';

import 'icon_box.dart';

class ScrollableServices extends StatelessWidget {
  final String title;
  final String title2;
  ScrollableServices({required this.title,this.title2=""});
   List iconsList1 = [
    ["lib/images/Topup.png", "Topup"],
    ["lib/images/bulb.png", "electricity"],
    ["lib/images/tap.png", "Khanepani"],
    ["lib/images/in-love.png", "eSewa Care"],
    ["lib/images/internet.png", "Internet"],
  ];

  @override
  Widget build(BuildContext context) {
    return Column(children: [
       Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10.0, vertical: 3),
                    child: Text(
                      title,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10.0, vertical: 3),
                    child: Text(
                      title2,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
         ],
       ),
              Container(
                height: 95,
                padding: const EdgeInsets.only(top: 10),
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
    ],);
  }
}