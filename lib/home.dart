import 'package:flutter/material.dart';
import 'package:circle_bottom_navigation_bar/circle_bottom_navigation_bar.dart';
import 'package:circle_bottom_navigation_bar/widgets/tab_data.dart';
import 'package:itrans/Detailhome.dart';
import 'package:itrans/profile.dart';
import 'package:itrans/ticket.dart';
import 'package:itrans/history.dart';


class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  int currentPage = 0;
  final List<Widget> _pages = [
    Homepage(),
    ticket(),
    history(),
    profile(),
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final viewPadding = MediaQuery.of(context).viewPadding;
    double barHeight;
    double barHeightWithNotch = 67;
    double arcHeightWithNotch = 67;

    if (size.height > 700) {
      barHeight = 70;
    } else {
      barHeight = size.height * 0.1;
    }

    if (viewPadding.bottom > 0) {
      barHeightWithNotch = (size.height * 0.07) + viewPadding.bottom;
      arcHeightWithNotch = (size.height * 0.075) + viewPadding.bottom;
    }

    return Scaffold(

      body: _pages[currentPage],
      bottomNavigationBar: CircleBottomNavigationBar(
        initialSelection: currentPage,
        barHeight: viewPadding.bottom > 0 ? barHeightWithNotch : barHeight,
        arcHeight: viewPadding.bottom > 0 ? arcHeightWithNotch : barHeight,
        itemTextOff: viewPadding.bottom > 0 ? 0 : 1,
        itemTextOn: viewPadding.bottom > 0 ? 0 : 1,
        circleOutline: 15.0,
        shadowAllowance: 0.0,
        circleSize: 50.0,
        blurShadowRadius: 50.0,
        circleColor: Colors.blue,
        activeIconColor: Colors.white,
        inactiveIconColor: Colors.grey,
        tabs: getTabsData(),
        onTabChangedListener: (index) => setState(() => currentPage = index),
      ),
    );
  }
}

class History {
}

List<TabData> getTabsData() {
  return [
    TabData(
      icon: Icons.home,
      iconSize: 25.0,
      title: 'Home',
      fontSize: 12,
      fontWeight: FontWeight.bold,
    ),
    TabData(
      icon: Icons.newspaper,
      iconSize: 25,
      title: 'Ticket',
      fontSize: 12,
      fontWeight: FontWeight.bold,
    ),
    TabData(
      icon: Icons.history,
      iconSize: 25,
      title: 'History',
      fontSize: 12,
      fontWeight: FontWeight.bold,
    ),
    TabData(
      icon: Icons.person,
      iconSize: 25,
      title: 'Profil',
      fontSize: 12,
      fontWeight: FontWeight.bold,
    ),
  ];
}


