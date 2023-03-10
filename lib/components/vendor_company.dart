import 'package:flutter/material.dart';

import 'square_border_iconbox.dart';

class VendorCompany extends StatelessWidget {

  List imgList=[
    //'img','name'
    ["lib/images/sparrow3.png","Mr. & Miss National Nepal"],
    ["lib/images/veda.jpg","Mr. & 3rd national coorperative"],
    ["lib/images/mmc.jpg","Mr. & Miss National Nepal"],
    ["lib/images/ITKarkhana.jpg","Mr. & 3rd national coorperative"],
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, ),
                child: Text(
                  "Send Money To Vendor",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
        Container(
                    height: 190,
                    
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