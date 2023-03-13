import 'package:flutter/material.dart';
import 'menu.dart';
import 'transactions.dart';

import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import 'dashborad.dart';
import 'support.dart';



class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
//-----------------------------------------------------------------------------------------------------------------
  //for getting the index of selected screen --------------------------------
  int tabselectedIndex = 0;
  void _handleTabSelection(int tabIndex) {
    setState(() {
      tabselectedIndex = tabIndex;
    });

    print("Selected tab index: $tabIndex");
  }
  //-----------------------------------------------------------------------------------------------------

  final controller = PersistentTabController(initialIndex: 0);
  List<Widget> _buildscreen() {
    return [
      DashBoard(),
      Support(),
      DashBoard(),
      Transactions(),
      Menu(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarItem() {
    return [
      PersistentBottomNavBarItem(
          icon: Icon(Icons.home),
          title: "Home",
          inactiveColorPrimary: Colors.grey.shade600,
          activeColorPrimary: Colors.purple),
      PersistentBottomNavBarItem(
          icon: Icon(Icons.phone_callback_outlined),
          title: "Support",
          inactiveColorPrimary: Colors.grey.shade600,
          activeColorPrimary: Colors.purple),
      PersistentBottomNavBarItem(
          icon: Icon(Icons.qr_code),
          inactiveIcon: tabselectedIndex == 0
              ? Icon(
                  Icons.qr_code,
                  color: Colors.grey.shade100,
                )
              : Container(

                child: Icon(
                    Icons.qr_code,
                    size: 30,
                    color: Colors.grey.shade600,
                  ),
              ),
          title: "Scan & pay",
          
          activeColorPrimary: Colors.purple),
          
      PersistentBottomNavBarItem(
          icon: Icon(Icons.note_alt),
          title: "Transactions",
          inactiveColorPrimary: Colors.grey.shade600,
          activeColorPrimary: Colors.purple),
      PersistentBottomNavBarItem(
          icon: Icon(Icons.menu),
          title: "Menu",
          inactiveColorPrimary: Colors.grey.shade600,
          activeColorPrimary: Colors.purple)
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      backgroundColor: Color.fromARGB(255, 230, 226, 226),
      controller: controller,
      context,
      screens: _buildscreen(),
      items: _navBarItem(),
      decoration: NavBarDecoration(borderRadius: BorderRadius.circular(0.5)),
      navBarStyle:
          tabselectedIndex == 0 ? NavBarStyle.style15 : NavBarStyle.simple,
      onItemSelected: (int selectedIndex) {
        _handleTabSelection(selectedIndex);
      },
    );
  }
}
