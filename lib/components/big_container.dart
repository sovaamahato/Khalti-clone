import 'package:flutter/material.dart';

import 'icon_box.dart';

class BigContainer extends StatelessWidget {
  //list of icons ---------------------------------
  List iconsList = [
    ["lib/images/Topup.png", "Topup"],
    ["lib/images/bulb.png", "electricity"],
    ["lib/images/tap.png", "Khanepani"],
    ["lib/images/in-love.png", "eSewa Care"],
    ["lib/images/internet.png", "Internet"],
    ["lib/images/aeroplane.png", "Airlines"],
    ["lib/images/shelter.png", "Govt. Payment"],
    ["lib/images/resort.png", "Hotels"],
    ["lib/images/travel.png", "International Airlines"],
    ["lib/images/cable-car.png", "Cable Car"],
    ["lib/images/Topup.png", "Topup"],
    ["lib/images/bulb.png", "electricity"],
    ["lib/images/tap.png", "Khanepani"],
    ["lib/images/in-love.png", "eSewa Care"],
    ["lib/images/internet.png", "Internet"],
    ["lib/images/aeroplane.png", "Airlines"],
    ["lib/images/Topup.png", "Topup"],
    ["lib/images/resort.png", "Hotels"],
    ["lib/images/travel.png", "International Airlines"],
    ["lib/images/cable-car.png", "Cable Car"],
    ["lib/images/cable-car.png", "Cable Car"],
    ["lib/images/Topup.png", "Topup"],
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
      height: MediaQuery.of(context).size.height / 1.57,
      // decoration: BoxDecoration(
      //     borderRad),
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        itemCount: iconsList.length,
        itemBuilder: (BuildContext ctx, index) {
          return IconBox(
              icon: iconsList[index][0], icon_name: iconsList[index][1]);
        },
      ),
    );
  }
}
