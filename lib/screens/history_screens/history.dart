import 'package:flutter/material.dart';


class history extends StatefulWidget {
  const history({Key? key}) : super(key: key);

  @override
  State<history> createState() => _historyState();
}

class _historyState extends State<history> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: const Text('History',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: (35)),),

        toolbarHeight: 110,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(80)
          ),
        ),

        flexibleSpace: Container(
          margin: EdgeInsets.only(top: 80, left: 50),
          child: Image.asset(
            "assets/image/icon.png",
            height: 25,
            width: 25,

          ),
        ),
      ),
    );
  }
}
