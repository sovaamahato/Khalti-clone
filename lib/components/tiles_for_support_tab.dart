import 'package:flutter/material.dart';

class TileForSupportTab extends StatelessWidget {
  
  final name;
  final hinttext;
  final icon;
  TileForSupportTab({this.hinttext,required this.icon,required this.name});


  @override
  Widget build(BuildContext context) {
    return Container(child: Row(children: [
      Container(height: 30,width: 30,child: Image.asset(icon,fit: BoxFit.cover,),),
      SizedBox(width: 10,),
      Text(name),
      SizedBox(width: 10,),
      Text(hinttext,style: TextStyle(color: Colors.grey[600]),),

    ]),);
  }
}