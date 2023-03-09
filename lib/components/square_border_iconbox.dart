import 'package:flutter/material.dart';

class SquareBorderIconBox extends StatelessWidget {
  final icon_name;
  final icon;
  SquareBorderIconBox({required this.icon_name, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        width: 100,
        // color: Colors.amber,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Padding(
            // padding: const EdgeInsets.all(8.0),
            Container(
              
              padding: EdgeInsets.symmetric(horizontal:20,vertical: 20),
              decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(8),border: Border.all(color: Colors.grey.shade400,width: 1.5)),
              child: Container(
                
                height: 53,
                width: 75,
                child: Image.asset(
                  icon,
                  fit: BoxFit.cover,
                  // color: Colors.purple,
                ),
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
                style: TextStyle(color: Colors.grey[800], fontSize: 11),
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
