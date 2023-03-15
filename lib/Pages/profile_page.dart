import 'package:flutter/material.dart';
import 'package:khalti_clone/Pages/HomePage.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Page"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "My Account",
                style: TextStyle(color: Colors.purple, fontSize: 20),
              ),

              SizedBox(
                height: 20,
              ),
              //profile picture
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade400,
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: const Offset(0, 5),
                      ),
                      BoxShadow(
                        color: Colors.grey.shade100,
                        offset: const Offset(0.1, 0),
                      )
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 85,
                      width: 70,
                      child: Image.network(
                        "https://static-cse.canva.com/blob/562124/RightBackground4.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    //name
                    Text(
                      "Sova Kumari Kushwaha",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text("9804391172"),
                    SizedBox(
                      height: 8,
                    ),
                    Text("mahatosova618@gmail.com"),
                    SizedBox(
                      height: 22,
                    ),

                    //---------consumer wala row------------------------
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person_pin_sharp,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "consumer",
                          style: TextStyle(color: Colors.green, fontSize: 13),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              //----------------- pic card
              Container(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Image.asset("lib/images/card.jpg"),
              ),
              SizedBox(
                height: 10,
              ),

              Container(
                child: Column(
                  children: [
                    //balance show---------------------
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.wallet,
                          size: 30,
                          color: Colors.purple,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                text: 'Rs. ',
                                style: TextStyle(color: Colors.black),
                                children: const <TextSpan>[
                                  TextSpan(
                                      text: '0',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                            Text(
                              "Available Balance",
                              style: TextStyle(color: Colors.grey[500]),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    //3 ota paisa wala row---------------------------------
                    //row1
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Main Balance",
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                        Text("Rs. 0")
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    //row2
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Bonus Balance",
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                        Text("Rs. 0")
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    //row3
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Khalti Points",
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                        Text("KP 0")
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      color: Colors.grey[600],
                      thickness: 0.2,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(Icons.info_outline_rounded),
                        Text(" Note: Bonus Balance is not transfferable")
                      ],
                    )
                  ],
                ),
              ),
              //duita listtile-------------
              ListTile(
                leading: Icon(Icons.person_pin_outlined),
                title: Text("KYC Details"),
                subtitle: Text(
                  "Fill your KYC form",
                  style: TextStyle(fontSize: 12.5),
                ),
                trailing: Icon(Icons.arrow_forward_ios,size:20 ,),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 40.0, left: 45),
                child: Divider(
                  color: Colors.grey,
                ),
              ),
              ListTile(
                leading: Icon(Icons.lock),
                title: Text("Nominee"),
                subtitle: Text(
                  "Add Nominee To Your Khalti Account",
                  style: TextStyle(fontSize: 12.5),
                  
                ),
                trailing: Icon(Icons.arrow_forward_ios,size:20 ,),
              ),
              SizedBox(height: 15,),
              //--------------------------divider-------------------
              Divider(
                      color: Colors.grey[500],
                      thickness: 0.2,
                    ),
SizedBox(height: 15,),

                   RichText(
                              text: TextSpan(
                                text: 'To Change any details after verification, please contact our Support Team at ',
                                style: TextStyle(color: Colors.grey,),
                                children: const <TextSpan>[
                                  TextSpan(
                                      text: 'support@khalti.com',
                                      style: TextStyle(
                                         color: Colors.purple,
                                          fontWeight: FontWeight.bold)),
                                          TextSpan(
                                      text: ' or ',
                                      style: TextStyle(
                                          color: Colors.grey,
                                         )),
                                          TextSpan(
                                      text: '1660-012-0998',
                                      style: TextStyle(
                                         color: Colors.purple,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
            ],
          ),
        ),
      ),
    );
  }
}
