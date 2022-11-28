import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ticket_widget/ticket_widget.dart';

 class Homepage extends StatefulWidget {
   const Homepage({Key? key}) : super(key: key);
 
   @override
   State<Homepage> createState() => _HomepageState();
 }

 class _HomepageState extends State<Homepage> {
   final List<String> imgList = [
     'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
     'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
     'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
     'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
     'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
     'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
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
             "assets/black.png",
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
                   borderRadius: BorderRadius.all(Radius.circular(5.0)),
                   child: Stack(
                     children: <Widget>[
                       Image.network(item, fit: BoxFit.cover, width: 800),
                       Positioned(
                         child: Container(
                           decoration: BoxDecoration(
                             gradient: LinearGradient(
                               colors: [
                                 Color.fromARGB(200, 0, 0, 0),
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





