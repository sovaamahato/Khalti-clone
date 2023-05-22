import 'package:flutter/material.dart';
import 'package:khalti_clone/tabs/Bank_tab.dart';
import 'package:khalti_clone/tabs/other_way_tab.dart';



class AddMoneyPage extends StatefulWidget {
  const AddMoneyPage({super.key});

  @override
  State<AddMoneyPage> createState() => _AddMoneyPageState();
}

class _AddMoneyPageState extends State<AddMoneyPage> {

  List <Widget>tabOpts=
  [
    Text("Banks",style: TextStyle(color: Colors.purple),),
    Text("Other ways",style: TextStyle(color: Colors.purple),)
    
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(" "),
        ),
    
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                    "Add Money",
                    style: TextStyle(
                        color: Colors.purple,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
          ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    " available Balance 0",
                    style: TextStyle(
                      color: Colors.grey[500],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                //tababr----------------------------

                TabBar(tabs: tabOpts),
                Expanded(
                child: TabBarView(children: [
                  BankTab(),
                  OtherWayTab(),
              
              
                ]),
              )
    
                
        ]),
      ),
    );
  }
}