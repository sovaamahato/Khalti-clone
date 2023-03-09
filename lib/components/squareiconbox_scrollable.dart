import 'package:flutter/material.dart';

import 'square_border_iconbox.dart';

class SquareIconBoxScrollable extends StatelessWidget {

  List imgList=[
    //'img','name'
    ["lib/images/cr.jpg","Mr. & Miss National Nepal"],
    ["lib/images/3d.png","Mr. & 3rd national coorperative"],
    ["lib/images/3d.png","Mr. & Miss National Nepal"],
    ["lib/images/3d.png","Mr. & 3rd national coorperative"],
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
                height: 140,
                
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
              ) ;
  }
}