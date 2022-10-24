import 'package:flutter/material.dart';
import 'package:itrans/history.dart';
import 'package:itrans/profile.dart';
import 'package:itrans/Detailticket.dart';
import 'package:itrans/ticket.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  int _selectedIndex = 0;

  List<Widget> list = [
    Tab(icon: Icon(Icons.home,color: Color.fromARGB(128, 0, 255, 203),)),
    Tab(icon: Icon(Icons.history,color: Color.fromARGB(128, 0, 255, 203))),
    Tab(icon: Icon(Icons.person,color: Color.fromARGB(128, 0, 255, 203))),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: list.length, vsync: this);

    _controller.addListener(() {
      setState(() {
        _selectedIndex = _controller.index;
      });
      print("Selected Index: " + _controller.index.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 150,
          flexibleSpace: Container(
            child: Image.asset("assets/premier_league_logo.png",width: 200,height: 150,),
          ),
          backgroundColor: Colors.white,
          bottom: TabBar(
            indicatorPadding: const EdgeInsets.all(5),
            indicator: BoxDecoration(
              border: Border.all(color: Color.fromARGB(128, 0, 255, 203), width: 5),
              borderRadius: BorderRadius.circular(25),
              color: Colors.white,
            ),
            onTap: (index) {},
            controller: _controller,
            tabs: list,
          ),
          title : Text('Liga Inggris'),
        ),
        body: TabBarView(
          controller: _controller,
          children: [
            history(),
            ticket(),
            profile(),


          ],
        ),
      ),
    );
  }
}