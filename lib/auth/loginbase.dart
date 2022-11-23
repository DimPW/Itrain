
// import 'package:Itrain/auth/authpage.dart';
// import 'package:Itrain/login.dart';
// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
//
// class loginbase extends StatefulWidget {
//   const loginbase({Key? key}) : super(key: key);
//
//   @override
//   State<loginbase> createState() => _loginbaseState();
// }
//
// class _loginbaseState extends State<loginbase> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: StreamBuilder<User?>(
//         stream: FirebaseAuth.instance.authStateChanges(),
//         builder: (context,snapshot){
//           if (snapshot.hasData){
//             return Homepage();
//           }else {
//             return authpage();
//           }
//         },
//       ),
//     );
//   }
// }
