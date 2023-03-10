import 'package:flutter/material.dart';

import 'square_border_iconbox.dart';

class VendorCompany extends StatelessWidget {

  List imgList=[
    //'img','name'
    // ["lib/images/sparrow3.png","Mr. & Miss National Nepal"],
    ["lib/images/veda.jpg","Veda"],
    ["lib/images/mmc.jpg","Mithlesh Mobile"],
    ["lib/images/veda.jpg","Veda"],
    ["lib/images/ITKarkhana.jpg","IT Karkhana"],
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10,),
        Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, ),
                child: Text(
                  "Send Money To Vendor",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
        Container(
                    height: 150,
                    // color: Colors.amber,
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