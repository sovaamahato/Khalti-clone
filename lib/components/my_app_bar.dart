import 'package:flutter/material.dart';

class MyAppBar extends StatefulWidget {
  const MyAppBar({super.key});

  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  bool isShow = true;

  void ShowNum() {
    setState(() {
      isShow = !isShow;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.29,
        decoration: BoxDecoration(
            color: Colors.purple,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8))),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 18,
                        backgroundImage: NetworkImage(
                          "https://i0.wp.com/blankhearts.com/wp-content/uploads/2022/10/girl-whatsapp-dp-7.jpg?fit=474%2C790&ssl=1",
                          // fit: BoxFit.cover
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
                      Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 29,
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
                      Icon(
                        Icons.notifications_outlined,
                        size: 29,
                        color: Colors.white,
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 35,
              ),
              //balance dekhaune row---------
              Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: 100,
                      ),
                      Positioned(
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
                                                  fontWeight: FontWeight.bold),
                                            )
                                          : Text(
                                              "XXX.XX",
                                              style: TextStyle(
                                                  color: Colors.purple,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: ShowNum,
                                      child: isShow
                                          ? Icon(
                                              Icons.remove_red_eye,
                                              color: Colors.purple,
                                            )
                                          : Icon(
                                              Icons.visibility_off_outlined,
                                              color: Colors.purple,
                                            ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Khalti Balance",
                                      style: TextStyle(color: Colors.purple),
                                    )
                                  ],
                                )
                              ]),
                        ),
                        height: 90,
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
                  Container(
                    width: 75,
                    height: 90,
                    child: Column(
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
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 90,
                    width: 55,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                          height: 9,
                        ),
                        Text(
                          " Send money",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
