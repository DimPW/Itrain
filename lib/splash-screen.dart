import 'package:flutter/material.dart';
import 'package:Itrain/intro.dart';
import 'package:lottie/lottie.dart';
import 'package:Itrain/home.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();
    _home();
  }

  _home()async {
    await Future.delayed(Duration(milliseconds: 5000), () {});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => intro()));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Lottie.network(
          'https://assets2.lottiefiles.com/packages/lf20_8LsVR1wgsM.json',
        ),
      ),
    );

  }
}
