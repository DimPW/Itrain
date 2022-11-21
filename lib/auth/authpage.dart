// import 'package:flutter/material.dart';
// import 'package:Itrain/signup.dart';
// import 'package:Itrain/login.dart';
//
// class authpage extends StatefulWidget {
//   const authpage({Key? key}) : super(key: key);
//
//   @override
//   State<authpage> createState() => _authpageState();
// }
//
// class _authpageState extends State<authpage> {
//
//   // intially, show the login page
//   bool showlogin = true;
//
//   void toggleScreens(){
//     setState(() {
//       showlogin = !showlogin;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     if (showlogin){
//       return login(showsignup: toggleScreens);
//     }else{
//       return signup(showlogin: toggleScreens);
//     }
//   }
// }
