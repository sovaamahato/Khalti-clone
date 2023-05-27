
import 'package:flutter/material.dart';
import 'package:khalti_clone/tabs/Bank_tab.dart';
import 'package:khalti_clone/tabs/other_way_tab.dart';

import '../tabs/inbox_notification_tab.dart';
import '../tabs/offers_notoficaton_tab.dart';



class NotificationPage extends StatefulWidget {
 

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {

  List <Widget>tabOpts=
  [
    Text("INBOX",style: TextStyle(color: Colors.purple),),
    Text("OFFERS",style: TextStyle(color: Colors.purple),)
    
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(" ",),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
    
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                    "Notifications",
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
                    "See new updates, offers & notices here ",
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
                  InboxNotificationTab(),
                  OffersNotificationTab(),
              
              
                ]),
              )
    
                
        ]),
      ),
    );
  }
}