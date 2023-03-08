import 'package:flutter/material.dart';

import 'icon_box.dart';

class BigContainer extends StatefulWidget {
  @override
  State<BigContainer> createState() => _BigContainerState();
}

class _BigContainerState extends State<BigContainer> {
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

  bool _showAll = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
          height: (_showAll || iconsList.length > 12)
              ? null
              : MediaQuery.of(context).size.height / 1.57,
          // decoration: BoxDecoration(
          //     borderRad),
          child: GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
              itemCount: _showAll ? iconsList.length : 12,
              itemBuilder: (BuildContext ctx, index) {
                if (_showAll || index < 12) {
                  return IconBox(
                      icon: iconsList[index][0],
                      icon_name: iconsList[index][1]);
                } else {
                  return Container(); // empty SizedBox to hide the item
                }
              }),
        ),
        InkWell(
          onTap: () {
            setState(() {
              _showAll = !_showAll;
            });
          },
          child: Container(
            width: 140,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Colors.purple[100],
                borderRadius: BorderRadius.circular(20)),
            child: _showAll
                ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        'View Less',
                        style: TextStyle(
                            color: Colors.purple, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 8,),
                  Icon(Icons.keyboard_arrow_up_sharp,color: Colors.purple,)
                  ],
                )
                : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('VIEW MORE',
                        style: TextStyle(
                            color: Colors.purple, fontWeight: FontWeight.bold),),
                  SizedBox(width: 8,),
                  Icon(Icons.keyboard_arrow_down_sharp,color: Colors.purple,)
                  ],
                ),
          ),
        ),

        SizedBox(height: 14,),
      ],
    );
  }
}
