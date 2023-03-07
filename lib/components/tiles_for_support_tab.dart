import 'package:flutter/material.dart';

class TileForSupportTab extends StatelessWidget {
  final name;
  final hinttext;
  final String icon;
  TileForSupportTab({this.hinttext, required this.icon, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        child: Row(children: [
          Container(
            height: 20,
            width: 20,
            child: Image.asset(
              icon,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            name,
            style: TextStyle(fontSize: 15),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Text(
              hinttext,
              style: TextStyle(color: Colors.grey[600],fontSize: 13),
            overflow: TextOverflow.ellipsis,
            ),

          ),
        ]),
      ),
    );
  }
}
