import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'dart:async';


class AutomaticScrollCard extends StatefulWidget {
  const AutomaticScrollCard({Key? key}) : super(key: key);

  @override
  State<AutomaticScrollCard> createState() => _AutomaticScrollCardState();
}

class _AutomaticScrollCardState extends State<AutomaticScrollCard> {

  final List <String> images=[
    "lib/images/cardV.jpg",
    "lib/images/cardI.jpg",
    "lib/images/cardII.jpg",
    "lib/images/cardIII.jpg",
    "lib/images/cardIV.jpg",

  ];
  // List<Widget> cards = [
  //   Card(
  //     child: Container(
  //       width: double.infinity,
  //       height: 200,
  //       color: Colors.white,
  //       child: Image.asset("lib/images/cardI.jpg"),
    //   ),
    // ),
    // Card(
    //   child: Container(
    //     width: double.infinity,
    //     height: 200,
    //     child: Image.asset("lib/images/cardII.jpg"),
    //   ),
    // ),
    // Card(
    //   child: Container(
  //       width: double.infinity,
  //       height: 200,
  //       child: Image.asset("lib/images/cardIII.jpg"),
  //     ),
  //   ),
  //   Card(
  //     child: Container(
  //       width: double.infinity,
  //       height: 200,
  //       child: Image.asset("lib/images/cardIV.jpg"),
  //     ),
  //   ),
  //   Card(
  //     child: Container(
  //       width: double.infinity,
  //       height: 200,
  //       child: Image.asset("lib/images/cardV.jpg"),
  //     ),
  //   ),
  // ];

  PageController controller = PageController();

  late Timer timer;

  @override
  // void initState() {
  //   super.initState();
  //   // Start the timer when the widget is initialized
  //   timer = Timer.periodic(Duration(seconds: 2), (Timer t) {
  //     if (controller.hasClients && controller.page != null) 
  //     {
  //       if (controller.page == cards.length - 1) {
  //         controller.animateToPage(0,
  //             duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
  //       } else {
  //         controller.nextPage(
          
  //             duration: Duration(milliseconds: 500), curve: Curves.easeIn);
  //        }
  //     }
  //   });
  // }

  // @override
  // void dispose() {
  //   // Cancel the timer when the widget is disposed to prevent memory leaks
  //   timer.cancel();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    final double width =MediaQuery.of(context).size.width;
    return Container(
      
      child: CarouselSlider(
        items:images.map((item) => Image.asset(item,)).toList(),
        options:CarouselOptions(
          height:200.0,
          viewportFraction:1,
          enlargeCenterPage:false,
          autoPlay:true,
          autoPlayInterval:const Duration(seconds: 3),
          enableInfiniteScroll: true,
          //autoPlayAnimationDuration:const Duration(microseconds: 800),
        )
      )
    );
  }
}
