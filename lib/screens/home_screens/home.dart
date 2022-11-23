import 'package:flutter/material.dart';
import 'package:Itrain/screens/home_screens/Detailhome.dart';
import 'package:Itrain/screens/profile_screens/profile.dart';
import 'package:Itrain/screens/history_screens/history.dart';
import 'package:fluentui_icons/fluentui_icons.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  int currentPage = 0;
  static final List<Widget>_widgetOptions =<Widget> [
    Homepage(),
    history(),
    profile()
  ];

  @override
  Widget build(BuildContext context) {

    void _onItemTapped(int index) {
      setState(() {
        currentPage = index;
      });
    }

    return Scaffold(
      body: Center(child: _widgetOptions[currentPage]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage ,
        onTap: _onItemTapped,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.white,
        items: const [
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
              label: "Home"),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
              label: "Seacrh"),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
              label: "Ticket"),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
              label: "Profile"),

        ],
      ),
    );
  }
}


