import 'package:flutter/material.dart';

class ShowMyQR extends StatelessWidget {
  const ShowMyQR({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.cancel,
            color: const Color.fromARGB(255, 75, 74, 74),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  color: Colors.red,
                  height: 90,
                  width: 180,
                  child: Image.asset(
                    "lib/images/khaltiLogoPurple.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "My QR Code",
                style: TextStyle(
                    color: Colors.purple,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "show your QR Code to accept payments",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  color: Colors.red,
                  height: 200,
                  width: 200,
                  child: Image.asset(
                    "lib/images/myQR.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Text(
                    "Sova Kumari Kushwaha",
                    style: TextStyle(
                        letterSpacing: 1.0,
                        //color: Colors.grey,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "9804391172",
                    style: TextStyle(
                      //letterSpacing: 1.0,
                      color: Colors.grey.shade900,
                      //fontSize: 20,
                      //fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.share,
                    color: Colors.purple,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "SHARE QR CODE",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.purple,
                        fontWeight: FontWeight.bold),
                  )
                ],
              )
            ]),
      ),
    );
  }
}
