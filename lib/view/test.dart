import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


// import '../yukselt.dart';


class DashBoard extends StatefulWidget {
  DashBoard({Key? key}) : super(key: key);
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashBoard> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {
    double? _ratingValue;
    double width;
    double height;
    int mediumScreenSize = 1000;
    int largeScreenSize = 1000;
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Image.asset(
            'images/randevu-sistemim.png',
            fit: BoxFit.contain,
            height: 80,
            width: 150,),
        ),
        toolbarHeight: 60,
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: SizedBox(
              width: 100, // <-- Your width
              child: ElevatedButton(onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Yukselt()),
                );
              }, style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple[800],
                  // background (button) color
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(
                    color: Colors.white, fontSize: 15,
                  ),

                  shape: const BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)))
              ), child: const Text("YÜKSELT"),
              ),
            ),
          ),

        ],
        backgroundColor: Colors.white,


      ),
      backgroundColor: Color(0xFFF5F5F5),
      body:
           CustomScrollView(
             slivers: <Widget>[
               SliverAppBar(
                 expandedHeight: 100.0,
                 floating: false,
                 pinned: false,
                 flexibleSpace:const FlexibleSpaceBar(
                   title:   Row(
                     children: [
                       Text('Ceren Ceviz Estetik',style: (TextStyle(color: Colors.white)),),
                       // SizedBox(width: 95,),
                       Icon(Icons.question_answer_outlined,color: Colors.white,),
                       SizedBox(width: 20,),
                       Icon(Icons.notifications_active,color:Colors.white,),
                       SizedBox(width: 20,),
                       Icon(Icons.person,color:Colors.white,),
                     ],
                   ),

                 ),

               ),

               SliverToBoxAdapter(
                 child: Container(
                   height: height,
                   color: Colors.blue,
                   child: Column(
                     children: [
                       Expanded(

                         child: SingleChildScrollView(
                           child: Column(
                             children: [
                               Column(
                                 children: [

                                   Stack(
                                     children: [

                                       Container(
                                         height: mediumScreenSize < height ?  width/0.8 : width/1.5,
                                         width: double.infinity,
                                         decoration: const BoxDecoration(
                                             image: DecorationImage(image: AssetImage('images/randevumcepte.jpg'),fit: BoxFit.fill),
                                             borderRadius: BorderRadius.only(

                                                 bottomLeft: Radius.circular(30),
                                                 bottomRight: Radius.circular(30)
                                             )),
                                       ),
                                       Column(
                                         children: [
                                           Stack(
                                             children: [
                                               Column(
                                                   children: [



                                                     Row(
                                                       children:[ Container(padding: EdgeInsets.only(top: 25,left: 20,right: 20),child: ElevatedButton(
                                                         onPressed: (){},
                                                         child:
                                                         Row(
                                                           mainAxisSize: MainAxisSize.min,
                                                           children: [ Text('0 / 5',style: TextStyle(fontSize: 15),), Icon(Icons.chevron_right),

                                                           ],),
                                                         style: ElevatedButton.styleFrom(
                                                             backgroundColor: Colors.green,

                                                             shape: RoundedRectangleBorder(
                                                                 borderRadius: BorderRadius.circular(5.0)
                                                             ),
                                                             minimumSize: Size(1, 35)
                                                         ),
                                                       ),),
                                                         SizedBox(width: 130,),
                                                         Container(padding:EdgeInsets.only(top: 50),child:
                                                         Text('1500 SMS', style: TextStyle(color: Colors.white,fontSize: 18,),),)
                                                       ],

                                                     ),


                                                     Container(padding: EdgeInsets.only(right: 210,),child: RatingBar(
                                                         initialRating: 1,
                                                         direction: Axis.horizontal,
                                                         allowHalfRating: true,
                                                         itemSize: 18,
                                                         itemCount: 5,
                                                         itemPadding: EdgeInsets.symmetric(horizontal: 3.0),
                                                         ratingWidget: RatingWidget(
                                                             full: const Icon(Icons.star, color: Colors.yellow),
                                                             half: const Icon(
                                                               Icons.star_half,
                                                               color: Colors.yellow,
                                                             ),
                                                             empty: const Icon(
                                                               Icons.star_outline,
                                                               color: Colors.yellow,
                                                             )),
                                                         onRatingUpdate: (value) {
                                                           setState(() {
                                                             _ratingValue = value;
                                                           });
                                                         }),),
                                                     Container(decoration: const BoxDecoration(
                                                         borderRadius: BorderRadius.only(
                                                             topLeft: Radius.circular(15),
                                                             topRight: Radius.circular(15),
                                                             bottomLeft: Radius.circular(15),
                                                             bottomRight: Radius.circular(15)
                                                         ),
                                                         color: Colors.white),
                                                         margin: const EdgeInsets.only(top: 5,bottom:10,left: 15,right: 15),
                                                         child: Container(
                                                           margin: EdgeInsets.only(top: 10,left: 10,bottom: 20),
                                                           child: Column(

                                                             children: [
                                                               Padding(padding: EdgeInsets.only(bottom: 10,right: 210),child:  Text('Aksiyonlar',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),),

                                                               Padding(padding: EdgeInsets.only(bottom: 10,left:5),child:
                                                               Row(
                                                                   children: [

                                                                     ElevatedButton(onPressed: (){}, child: Column(
                                                                       children: [
                                                                         Text('Randevular'),
                                                                         Text('2')
                                                                       ],
                                                                     ),
                                                                       style: ElevatedButton.styleFrom(
                                                                           backgroundColor: Color(0xFF80DEEA),
                                                                           elevation: 5,
                                                                           shape: RoundedRectangleBorder(
                                                                               borderRadius: BorderRadius.circular(5.0)
                                                                           ),
                                                                           minimumSize: Size(150,50)
                                                                       ),
                                                                     ),
                                                                     SizedBox(width: 5,),
                                                                     ElevatedButton(onPressed: (){}, child: Column(
                                                                       children: [
                                                                         Text('Etkinlik'),
                                                                         Text('0')
                                                                       ],
                                                                     ),
                                                                       style: ElevatedButton.styleFrom(
                                                                           backgroundColor: Color(0xFF9C27B0),
                                                                           elevation: 5,
                                                                           shape: RoundedRectangleBorder(
                                                                               borderRadius: BorderRadius.circular(5.0)
                                                                           ),
                                                                           minimumSize: Size(150,50)
                                                                       ),
                                                                     ),
                                                                   ]
                                                               ),

                                                               ) ,

                                                               Row(
                                                                 children: [
                                                                   Padding(padding: EdgeInsets.only(left: 5),child:
                                                                   ElevatedButton(onPressed: (){}, child: Column(
                                                                     children: [
                                                                       Text('Ön Görüşme'),
                                                                       Text('2')
                                                                     ],
                                                                   ),
                                                                     style: ElevatedButton.styleFrom(
                                                                         backgroundColor: Color(0xFFEA80FC),
                                                                         elevation: 5,
                                                                         shape: RoundedRectangleBorder(
                                                                             borderRadius: BorderRadius.circular(5.0)
                                                                         ),
                                                                         minimumSize: Size(150,50)
                                                                     ),
                                                                   ),
                                                                   ),
                                                                   Padding(padding: EdgeInsets.only(left: 5),child:
                                                                   ElevatedButton(onPressed: (){},

                                                                     child: Column(
                                                                       children: [
                                                                         Text('Kasa'),
                                                                         Text('10.000 tl')
                                                                       ],
                                                                     ),
                                                                     style: ElevatedButton.styleFrom(
                                                                         backgroundColor: Color(0xFF64B5F6),
                                                                         elevation: 5,
                                                                         shape: RoundedRectangleBorder(
                                                                             borderRadius: BorderRadius.circular(5.0)
                                                                         ),
                                                                         minimumSize: Size(150,50)
                                                                     ),
                                                                   ),
                                                                   ),
                                                                 ],
                                                               )

                                                             ],
                                                           ),

                                                         )
                                                     ),
                                                     Container(

                                                         child: Column(
                                                           children: [
                                                             Text('Satış Performansı',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 18),),
                                                             SizedBox(height: 5,),
                                                             Row(
                                                               children: [
                                                                 SizedBox(width: 40,),
                                                                 ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(
                                                                     backgroundColor: Colors.green,
                                                                     // background (button) color
                                                                     foregroundColor: Colors.white,
                                                                     elevation: 8,
                                                                     textStyle: const TextStyle(
                                                                       color: Colors.white, fontSize: 13,
                                                                     ),
                                                                     minimumSize:Size(140,65),
                                                                     shape: const RoundedRectangleBorder(
                                                                         borderRadius: BorderRadius.all(Radius.circular(5)))
                                                                 ),

                                                                     child: Column(
                                                                       children: [
                                                                         Text('Yapılan Ödemeler',style: TextStyle(fontWeight: FontWeight.bold),),
                                                                         Text('2000 tl',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),)
                                                                       ],
                                                                     )

                                                                 ),

                                                                 SizedBox(width: 5,),
                                                                 ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(
                                                                     backgroundColor: Colors.purple[800],
                                                                     // background (button) color
                                                                     foregroundColor: Colors.white,
                                                                     elevation: 8,
                                                                     textStyle: const TextStyle(
                                                                       color: Colors.white, fontSize: 13,
                                                                     ),
                                                                     minimumSize:Size(100,65),
                                                                     shape: const RoundedRectangleBorder(
                                                                         borderRadius: BorderRadius.all(Radius.circular(5)))
                                                                 ), child:  Column(
                                                                   children: [
                                                                     Text('Beklenen Ödemeler',style: TextStyle(fontWeight: FontWeight.bold),),
                                                                     Text('1500 tl',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),)
                                                                   ],
                                                                 ),
                                                                 ),
                                                               ],
                                                             ),
                                                             Padding(
                                                               padding: const EdgeInsets.only(right:165,top: 10),
                                                               child: Text('Santral Raporları',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                                             ),
                                                             SingleChildScrollView(
                                                               child: Container(
                                                                 height: 60,margin: EdgeInsets.symmetric(vertical: 8.0),
                                                                 child: ListView(
                                                                   scrollDirection: Axis.horizontal,
                                                                   shrinkWrap: true,
                                                                   padding: EdgeInsets.only(left: 10,right: 10),
                                                                   children: [
                                                                     Container(
                                                                       width: 150,
                                                                       child: ElevatedButton(onPressed:(){},
                                                                           style: ElevatedButton.styleFrom(
                                                                               backgroundColor: Colors.white,
                                                                               side: const BorderSide(
                                                                                   width: 2,
                                                                                   color: Colors.green
                                                                               ),
                                                                               minimumSize:Size(70,150),
                                                                               shape: const RoundedRectangleBorder(
                                                                                   borderRadius: BorderRadius.all(Radius.circular(5)))

                                                                           ),
                                                                           child: Column(children: [
                                                                             SizedBox(height: 10,),
                                                                             Text('Giden Aramalar', style: TextStyle(fontSize: 14,color: Colors.green ),),
                                                                             SizedBox(height: 5,),

                                                                             Text('10 Aramalar',style: TextStyle(color: Colors.green,fontSize: 17),),

                                                                           ])),
                                                                     ),
                                                                     SizedBox(width: 10,),
                                                                     Container(
                                                                       width: 150,

                                                                       child: ElevatedButton(onPressed:(){},
                                                                           style: ElevatedButton.styleFrom(
                                                                               backgroundColor: Colors.white,
                                                                               side: const BorderSide(
                                                                                   width: 2,
                                                                                   color: Color(0xFF6A1B9A)
                                                                               ),
                                                                               minimumSize:Size(70,150),
                                                                               shape: const RoundedRectangleBorder(
                                                                                   borderRadius: BorderRadius.all(Radius.circular(5)))

                                                                           ),
                                                                           child: Column(children: [
                                                                             SizedBox(height: 10,),
                                                                             Text('Gelen Aramalar', style: TextStyle(fontSize: 14,color: Colors.purple[800]),),
                                                                             SizedBox(height: 5,),
                                                                             Text('5 Arama',style: TextStyle(color: Colors.purple[800],fontSize: 17),),

                                                                           ])
                                                                       ),
                                                                     ),
                                                                     SizedBox(width: 10,),
                                                                     Container(
                                                                       width: 150,

                                                                       child: ElevatedButton(onPressed:(){},
                                                                           style: ElevatedButton.styleFrom(
                                                                               backgroundColor: Colors.white,
                                                                               minimumSize:Size(70,150),
                                                                               side: const BorderSide(
                                                                                   width: 2,
                                                                                   color: Color(0xFFFF1744)
                                                                               ),
                                                                               shape: const RoundedRectangleBorder(
                                                                                   borderRadius: BorderRadius.all(Radius.circular(5)))

                                                                           ),
                                                                           child: Column(children: [
                                                                             SizedBox(height: 10,),
                                                                             Text('Cevapsız Aramalar', style: TextStyle(fontSize: 14,color: Color(0xFFFF1744) ),),
                                                                             SizedBox(height: 5,),
                                                                             Text('5 Arama',style: TextStyle(color: Color(0xFFFF1744),fontSize: 17),),
                                                                           ])),
                                                                     ),

                                                                   ],
                                                                 ),
                                                               ),
                                                             ),

                                                             SingleChildScrollView(
                                                               child: Container(
                                                                   decoration: const BoxDecoration(
                                                                       borderRadius: BorderRadius.only(
                                                                           topLeft: Radius.circular(15),
                                                                           topRight: Radius.circular(15),
                                                                           bottomLeft: Radius.circular(15),
                                                                           bottomRight: Radius.circular(15)
                                                                       ),
                                                                       color: Colors.white),
                                                                   width: 350,
                                                                   height: 300,
                                                                   margin: const EdgeInsets.only(top: 5,bottom:10,left: 15,right: 15),
                                                                   child: ListView(
                                                                     scrollDirection: Axis.vertical,
                                                                     shrinkWrap: true,
                                                                     children: [
                                                                       Padding(
                                                                         padding: const EdgeInsets.all(10.0),
                                                                         child: Text('Günlük Ajandalar',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),

                                                                       ),
                                                                       ListTile(
                                                                         leading: Icon(Icons.calendar_month),
                                                                         title: Text('Not 1'),
                                                                         trailing: Icon(Icons.chevron_right),
                                                                         onTap: (){},
                                                                       ),
                                                                       ListTile(
                                                                         leading: Icon(Icons.calendar_month),
                                                                         title: Text('Not 2'),
                                                                         trailing: Icon(Icons.chevron_right),
                                                                         onTap: (){},
                                                                       ),
                                                                       ListTile(
                                                                         leading: Icon(Icons.calendar_month),
                                                                         title: Text('Not 3'),
                                                                         trailing: Icon(Icons.chevron_right),
                                                                         onTap: (){},

                                                                       ),
                                                                       ListTile(
                                                                         leading: Icon(Icons.calendar_month),
                                                                         title: Text('Not 4'),
                                                                         trailing: Icon(Icons.chevron_right),
                                                                         onTap: (){},
                                                                       ),
                                                                       ListTile(
                                                                         leading: Icon(Icons.calendar_month),
                                                                         title: Text('Not 5'),
                                                                         trailing: Icon(Icons.chevron_right),
                                                                         onTap: (){},
                                                                       ),
                                                                       ListTile(
                                                                         leading: Icon(Icons.calendar_month),
                                                                         title: Text('Not 6'),
                                                                         trailing: Icon(Icons.chevron_right),
                                                                         onTap: (){},
                                                                       ),
                                                                     ],
                                                                   )
                                                               ),
                                                             )
                                                           ],
                                                         )
                                                     )


                                                   ]
                                               ),


                                             ],
                                           )
                                         ],
                                       )
                                     ],
                                   )
                                 ],
                               ),
                             ],
                           ),
                         ),
                       ),
                     ],
                   ),
                 ),
               ),
             ],
           )
          
      

    );}












}

