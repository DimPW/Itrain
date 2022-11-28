import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ticket_widget/ticket_widget.dart';
import 'package:carousel_images/carousel_images.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final List<String> listImages = [
    'assets/image/Itrain.png',
    'assets/image/penggunabaru.png',
    'assets/image/promo.png',
    'assets/image/quote1.png',
    'assets/image/quotedua.png'
  ];
  final List<String> imgList = [
    'assets/image/Itrain.png',
    'assets/image/penggunabaru.png',
    'assets/image/promo.png',
    'assets/image/quote1.png',
    'assets/image/quotedua.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text('Itrain',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: (20), color: Colors.black),),
        toolbarHeight: 110,


        flexibleSpace: Container(
          margin: EdgeInsets.only(top: 83, left: 1, right: 150),
          child: Image.asset(
            "assets/image/black.png",
            height: 13,
            width: 13,

          ),
        ),
      ),

      body: SingleChildScrollView(

          child: Column(

              children:[
                SizedBox(height: 1,),
                Padding(
                  padding: EdgeInsets.only(right:80, left: 15), //apply padding to some sides only
                  child:
                  Text(
                    'Where do you want to go?', maxLines: 2,
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.bold, fontSize: 30
                    ),
                  ),

                ),
                SizedBox(height: 50,),
                Padding(
                  padding: EdgeInsets.only(right:170, left: 20), //apply padding to some sides only
                  child:
                  Text(
                    'Your trip start from here!', maxLines: 2,
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.bold, fontSize: 15
                    ),
                  ),
                ),

                SizedBox(height: 20,),
                CarouselSlider(
                  options: CarouselOptions(
                    height: 220,
                    autoPlay: true,
                    aspectRatio: 2.0,
                    enlargeCenterPage: true,
                  ),
                  items: imgList
                      .map((item) => Container(
                    child: Container(
                      margin: EdgeInsets.all(1),
                      padding: EdgeInsets.only(top: 20),
                      child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          child: Stack(
                            children: <Widget>[
                              Image.network(item, fit: BoxFit.cover, width: 800),
                              Positioned(
                                child: Container(
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Color.fromARGB(0, 0, 0, 0),
                                        Color.fromARGB(0, 0, 0, 0)
                                      ],
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.topCenter,
                                    ),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      vertical: 20, horizontal: 20.0),
                                ),
                              ),
                            ],
                          )),
                    ),
                  ))
                      .toList(),
                ),
                SizedBox(height: 50,),
                Padding(
                  padding: EdgeInsets.only(right:170, left: 20), //apply padding to some sides only
                  child:
                  Text(
                    'Your ongoing ticket', maxLines: 2,
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.bold, fontSize: 15
                    ),
                  ),
                ),

                SizedBox(height: 50,),

                TicketWidget(
                  color: Colors.grey,
                  width: 350,
                  height: 200,
                  isCornerRounded: true,
                  padding: EdgeInsets.all(20),
                  child: TicketData(),
                ),

                SizedBox(height: 50,),

                CarouselImages(
                  scaleFactor: 0.6,
                  listImages: listImages,
                  height: 200,
                  borderRadius: 30.0,
                  cachedNetworkImage: true,
                  verticalAlignment: Alignment.topCenter,
                  onTap: (index){
                    print('Tapped on page $index');
                  },
                )

              ]
          )
      ),
    );
  }
}

class TicketData extends StatelessWidget{
  const TicketData({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                )
              ],
            )
          ],
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Feb 20',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 47),
              child: Text(
                '3h5m',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 47),
              child: Text(
                'Feb 21',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),

        SizedBox(height: 15,),
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5, right: 0),
                child: ticketDetailsWidget('TMG', '11:30', 'KDS', '02:35'),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Economy',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 0),
          child: Container(
            width: 50,
          ),
        ),
      ],
    );
  }
}

Widget ticketDetailsWidget(String firstTitle, String firstDesc,
    String secondTitle, String secondDesc) {

  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [

      Padding(
        padding: const EdgeInsets.only(left: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              firstTitle,
              style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Text(
                firstDesc,
                style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),

      Icon(Icons.linear_scale_outlined,
        color: Colors.white,
        size: 25,),
      Icon(Icons.train_outlined,
        color: Colors.white,
        size: 50,),
      Icon(Icons.linear_scale_outlined,
        color: Colors.white,
        size: 25,),

      Padding(
        padding: const EdgeInsets.only(left: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              secondTitle,
              style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 4.0),

              child: Text(
                secondDesc,
                style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}





