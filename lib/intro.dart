import 'package:Itrain/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:Itrain/slider.dart';
import 'package:Itrain/screens/home.dart';

class intro extends StatefulWidget {

  @override
  _introState createState() => _introState();
}

class _introState extends State<intro> {
  int _currentPage = 0;
  PageController _controller = PageController();

  List<Widget> _pages = [
    SliderPage(
        title: "Kereta Cepat",
        description:
        "Perjalanan dengan aman dan nyaman menggunakan kereta cepat",
        image: ""),
    SliderPage(
        title: "Pembayaran",
        description:
        "Pembayaran elektronik untuk memudahkan user melakukan pembayaran",
        image: ""),
    SliderPage(
        title: "Pembayaran",
        description:
        "Pembayaran elektronik untuk memudahkan user melakukan pembayaran",
        image: ""),
    SliderPage(
        title: "Lokasi",
        description:
        "Melihat Lokasi langsung Kereta ",
        image: ""),
  ];

  _onchanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView.builder(
            scrollDirection: Axis.horizontal,
            onPageChanged: _onchanged,
            controller: _controller,
            itemCount: _pages.length,
            itemBuilder: (context, int index) {
              return _pages[index];
            },
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List<Widget>.generate(_pages.length, (int index) {
                    return AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        height: 10,
                        width: (index == _currentPage) ? 30 : 10,
                        margin:
                        EdgeInsets.symmetric(horizontal: 5, vertical: 30),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: (index == _currentPage)
                                ? Colors.blue
                                : Colors.blue.withOpacity(0.5)));
                  })),
              InkWell(
                onTap: () {
                  _controller.nextPage(
                      duration: Duration(milliseconds: 800),
                      curve: Curves.easeInOutQuint);
                },
                child: AnimatedContainer(
                  alignment: Alignment.center,
                  duration: Duration(milliseconds: 300),
                  height: 70,
                  width: (_currentPage == (_pages.length - 1)) ? 200 : 75,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(35)),
                  child: (_currentPage == (_pages.length - 1))
                      ?
                  Padding(padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: GestureDetector(

                        child: InkWell(
                           onTap: (){Navigator.push(
                               context,
                               MaterialPageRoute(builder: (context) => login())
                           );},
                          child: Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Center(
                              child: Text(
                                'Getting Start',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                  )
                      : Icon(
                    Icons.navigate_next,
                    size: 50,
                    color: Colors.white,


                  ),
                ),
              ),
              SizedBox(
                height: 50,
              )
            ],
          ),
        ],
      ),
    );
  }
}