import 'dart:async';
import 'package:Itrain/screens/home.dart';
import 'package:Itrain/intro.dart';
import 'package:flutter/material.dart';
import 'intro_screens/intro_page_1.dart';


class splashscreen extends StatefulWidget {

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => IntroPage1()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
            'assets/Logoitrain.png',
            width: 50,
            height: 50,
            ),
            Text(
              'Indonesia Fast Train',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
      ),
    );
  }
}
