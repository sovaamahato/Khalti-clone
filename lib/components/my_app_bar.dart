import 'package:flutter/material.dart';

import '../Pages/add_money_page.dart';
import '../Pages/notification_page.dart';
import '../Pages/profile_page.dart';
import '../Pages/promo_code_page.dart';
import '../Pages/send_money_page.dart';
import 'custom_search_delegate.dart';

class MyAppBar extends StatefulWidget {
  const MyAppBar({super.key});

  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  bool isShow = false;

  void ShowNum() {
    setState(() {
      isShow = !isShow;
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    // print(height);
    // print("w = $width");
    return Container(
        height: width > 400
            ? MediaQuery.of(context).size.height * 0.3
            : MediaQuery.of(context).size.height * 0.29,
        decoration: BoxDecoration(
            color: Colors.purple,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8))),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (BuildContext context) {
                              return ProfilePage();
                            }),
                          ),
                        },
                        child: CircleAvatar(
                          radius: 18,
                          backgroundImage: NetworkImage(
                            "https://i0.wp.com/blankhearts.com/wp-content/uploads/2022/10/girl-whatsapp-dp-7.jpg?fit=474%2C790&ssl=1",
                            // fit: BoxFit.cover
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Sova",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 23),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () => showSearch(
                            context: context, delegate: CustomSearchDelegate()),
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 29,
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Stack(children: [
                        Container(
                          width: 30,
                          height: 32,
                        ),
                        Positioned(
                          left: 1,
                          top: 3,
                          child: GestureDetector(
                            onTap: () => {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return PromoCodesPage();
                                }),
                              ),
                            },
                            child: Container(
                              height: 29,
                              width: 30,
                              child: Image.asset(
                                "lib/images/giftbox.png",
                                fit: BoxFit.cover,
                                color: Color.fromARGB(255, 245, 75, 132),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                            top: 14,
                            left: 9.5,
                            child: Text(
                              "%",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ))
                      ]),
                      SizedBox(
                        width: 12,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (BuildContext context) {
                            return NotificationPage();
                          }));
                        },
                        child: Icon(
                          Icons.notifications_outlined,
                          size: 29,
                          color: Colors.white,
                        ),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              //balance dekhaune row---------
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Stack(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: 100,
                      ),
                      Positioned(
                          child: GestureDetector(
                        onTap: ShowNum,
                        child: Container(
                          width: 170,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(8)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          //---------------------this need be replace---------------------------------------------
                                          "rs.",
                                          style: TextStyle(
                                              color: Colors.purple,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        isShow
                                            ? Text(
                                                "0",
                                                style: TextStyle(
                                                    color: Colors.purple,
                                                    fontSize: 25,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )
                                            : Text(
                                                "XXX.XX",
                                                style: TextStyle(
                                                    color: Colors.purple,
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )
                                      ],
                                    ),
                                  ),
                                  // SizedBox(
                                  //   height: 8,
                                  // ),
                                  GestureDetector(
                                    onTap: ShowNum,
                                    child: Row(
                                      children: [
                                        isShow
                                            ? Icon(
                                                Icons.remove_red_eye,
                                                color: Colors.purple,
                                              )
                                            : Icon(
                                                Icons.visibility_off_outlined,
                                                color: Colors.purple,
                                              ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "Khalti Balance",
                                          style:
                                              TextStyle(color: Colors.purple),
                                        )
                                      ],
                                    ),
                                  )
                                ]),
                          ),
                          height: 90,
                        ),
                      )),
                      Positioned(
                        left: 155,
                        top: 31,
                        child: Container(
                          height: 25,
                          width: 25,
                          //////////////////////-------------refresh---------------------------------
                          child: Icon(
                            Icons.refresh,
                            color: Colors.purple,
                            size: 20,
                          ),
                          decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(50)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return AddMoneyPage();
                      }));
                    },
                    child: Container(
                      width: 75,
                      height: 90,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.white,
                            ),
                            child: Icon(
                              Icons.wallet,
                              color: Colors.purple,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Add money",
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return SendMoneyPage();
                      }));
                    },
                    child: Container(
                      //color: Colors.red,

                      height: 95,
                      width: width > 400 ? 100 : 60,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.white,
                            ),
                            child: Icon(
                              Icons.phone_android,
                              color: Colors.purple,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            width: 200,
                            child: Padding(
                              padding: width > 400
                                  ? const EdgeInsets.only(left: 2.0)
                                  : const EdgeInsets.only(left: 10.0),
                              child: Text(
                                " Send Money",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 13, color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
