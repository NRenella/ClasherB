import 'package:flutter/material.dart';
import 'package:ff_navigation_bar/ff_navigation_bar.dart';

import 'package:clasherbeta/PlayerSearchPage.dart';
import 'package:clasherbeta/TeamPage.dart';
import 'package:clasherbeta/4Fun.dart';
import 'package:clasherbeta/ProfilePage.dart';

void main() => runApp(NavigationBar());


class NavigationBar extends StatefulWidget{

  @override
  _NavigationBarState createState() => new _NavigationBarState();

}

class _NavigationBarState extends State<NavigationBar> {
  int _currentIndex = 0;
  List<Widget> _children = [
    TeamPage(),
    ProfilePage(),
    PlayerSearchPage(),
    ForFunPage(),
  ];

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       body: _children[_currentIndex],
        bottomNavigationBar: FFNavigationBar(
          theme: FFNavigationBarTheme(
            barBackgroundColor: Colors.white,
            selectedItemBackgroundColor: Color(0xffA4262C),
            selectedItemIconColor: Colors.white,
            selectedItemLabelColor: Colors.black,
          ),
           selectedIndex: _currentIndex,
           onSelectTab: onTabTapped,
           items: [
              FFNavigationBarItem(
                iconData: Icons.home,
                label: 'Home',
              ),
              FFNavigationBarItem(
                iconData: Icons.local_dining,
                label: 'Teams',
              ),
              FFNavigationBarItem(
                iconData: Icons.insert_emoticon,
                label: 'Players',
              ),
              FFNavigationBarItem(
                iconData: Icons.settings,
                label: 'Settings',
              ),
           ]
        ),
      );
     }
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
