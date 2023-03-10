import 'package:flutter/material.dart';

import 'square_border_iconbox.dart';

class ScrollableGovernmentServices extends StatelessWidget {

  List imgList=[
    //'img','name'
    // ["lib/images/sparrow3.png","Mr. & Miss National Nepal"],
    ["lib/images/ntc.jpg","NTC vacancy"],
    ["lib/images/nepal_logo.png","Bluebook Renew"],
    ["lib/images/Tr.jpg","Traffic Police Fine Payment"],
    ["lib/images/ssf.jpg","Social Security Fund"],
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            
            Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10.0, ),
                    child: Text(
                      "Popular Government Services",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10.0, ),
                    child: Text(
                      "SEE ALL",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
          ],
        ),
        Container(
                    height: 160,
                    
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: imgList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return SquareBorderIconBox(
                          icon_name: imgList[index][1],
                          icon: imgList[index][0],
                        );
                      },
                    ),
                  ),
      ],
    ) ;
  }
}