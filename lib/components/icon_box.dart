import 'package:flutter/material.dart';

class IconBox extends StatelessWidget {
  // const IconBox({Key? key}) : super(key: key);
  final icon;
  final String icon_name;
  final String cashback;
  IconBox({required this.icon, required this.icon_name, this.cashback = ""});

  @override
  Widget build(BuildContext context) {
    return Container(
      //  color: Colors.amber,
      // color: Colors.blue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Padding(
          // padding: const EdgeInsets.all(8.0),
          Container(
            height: 30,
            width: 20,
            child: Image.asset(
              icon,
              fit: BoxFit.cover,
              color: Colors.purple,
            ),
          ),
          // ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 3, bottom: 8.0),
            child: Text(
              icon_name,
              style: TextStyle(color: Colors.grey[800], fontSize: 12),
            ),
          ),
          SizedBox(
            height: 8,
          ),
         Padding(
            padding: const EdgeInsets.only(left: 3, bottom: 8.0),
            child:cashback!=""? Container(
                padding: const EdgeInsets.all(1),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.pink),
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Text(
                    cashback,
                    style: TextStyle(color: Colors.white, fontSize: 8),
                  ),
                )):Container()
          ),
        ],
      ),
    );
  }
}
