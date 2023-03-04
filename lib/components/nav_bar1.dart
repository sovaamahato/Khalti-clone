import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class NavBar1 extends StatefulWidget {
  const NavBar1({super.key});

  @override
  State<NavBar1> createState() => _NavBar1State();
}

class _NavBar1State extends State<NavBar1> {
  final controller = PersistentTabController(initialIndex: 0);
  List<Widget> _buildscreen() {
    return [
      Text("home"),
      Text("home"),
      Text("home"),
      Text("home"),
      Text("home"),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarItem() {
    return [
      PersistentBottomNavBarItem(icon: Icon(Icons.home)),
      PersistentBottomNavBarItem(icon: Icon(Icons.home)),
      PersistentBottomNavBarItem(icon: Icon(Icons.home)),
      PersistentBottomNavBarItem(icon: Icon(Icons.home)),
      PersistentBottomNavBarItem(icon: Icon(Icons.home))
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: _buildscreen(),
      items: _navBarItem(),
      navBarStyle: NavBarStyle.style15,
    );
  }
}
