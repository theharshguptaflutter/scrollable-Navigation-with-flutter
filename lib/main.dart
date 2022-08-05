// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_scroll_view/screentwo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home());
  }
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ScrollController scrollController = ScrollController();
  bool showbtn = false;

  @override
  void initState() {
    scrollController.addListener(() {
      //listener
      showbtn = true;
      print(scrollController.offset);
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Product()),
                    );
                  },
                  child: Text("Click me")))
        ],
      )),
    );
  }
  // double screenWidth = MediaQuery.of(context).size.width;
  // return Scaffold(
  //     // appBar:
  //     // scrollController.offset == ''
  //     //     ? AppBar(
  //     //         title: Text("Get Scroll Position in Flutter 1"),
  //     //         backgroundColor: Colors.redAccent)
  //     //  :
  //     // AppBar(
  //     //     title: Text("Get Scroll Position in Flutter 2"),
  //     //     backgroundColor: Color.fromARGB(255, 136, 127, 127)

  //     floatingActionButton: Card(
  //         child: showbtn
  //             ? Text(
  //                 "Scroll Position: " + scrollController.offset.toString(),
  //                 style: TextStyle(fontSize: 20),
  //               )
  //             : Text("")),
  //     body: SafeArea(
  //       child: Column(
  //         children: [
  //           Column(
  //             children: [
  //               if (scrollController.hasClients)
  //                 Column(children: [
  //                   if (scrollController.offset >= 8.0)
  //                     Container(
  //                       width: screenWidth,
  //                       height: 50,
  //                       color: Colors.amber,
  //                       child: Row(
  //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                         children: [
  //                           Row(
  //                             children: [
  //                               Row(
  //                                 // ignore: prefer_const_literals_to_create_immutables
  //                                 children: [
  //                                   Padding(
  //                                     padding:
  //                                         const EdgeInsets.only(left: 20.0),
  //                                     child: Icon(
  //                                       Icons.arrow_back_ios,
  //                                       color: Colors.black,
  //                                     ),
  //                                   ),
  //                                 ],
  //                               ),
  //                             ],
  //                           ),
  //                           Padding(
  //                             padding: const EdgeInsets.only(right: 10.0),
  //                             child: Row(
  //                               // ignore: prefer_const_literals_to_create_immutables
  //                               children: [
  //                                 Icon(
  //                                   Icons.card_travel,
  //                                   color: Colors.black,
  //                                 ),
  //                                 SizedBox(
  //                                   width: 20,
  //                                 ),
  //                                 Icon(
  //                                   Icons.heart_broken,
  //                                   color: Colors.black,
  //                                 ),
  //                               ],
  //                             ),
  //                           )
  //                         ],
  //                       ),
  //                     )
  //                 ])
  //             ],
  //           ),
  //           Expanded(
  //             child: SingleChildScrollView(
  //                 controller: scrollController,
  //                 child: Column(
  //                   children: [
  //                     SizedBox(
  //                       height: 1000,
  //                       width: 500,
  //                       child: Column(
  //                         children: [
  //                           Column(
  //                             // mainAxisAlignment: MainAxisAlignment.start,
  //                             children: [
  //                               if (scrollController.hasClients)
  //                                 Column(
  //                                   children: [
  //                                     if (scrollController.offset == 0.0)
  //                                       Container(
  //                                         width: screenWidth,
  //                                         height: 50,
  //                                         // color: Colors.amber,
  //                                         child: Row(
  //                                           mainAxisAlignment:
  //                                               MainAxisAlignment
  //                                                   .spaceBetween,
  //                                           children: [
  //                                             Row(
  //                                               children: [
  //                                                 Row(
  //                                                   // ignore: prefer_const_literals_to_create_immutables
  //                                                   children: [
  //                                                     Padding(
  //                                                       padding:
  //                                                           const EdgeInsets
  //                                                                   .only(
  //                                                               left: 20.0),
  //                                                       child: Icon(
  //                                                         Icons
  //                                                             .arrow_back_ios,
  //                                                         color: Colors.black,
  //                                                       ),
  //                                                     ),
  //                                                   ],
  //                                                 ),
  //                                               ],
  //                                             ),
  //                                             Padding(
  //                                               padding:
  //                                                   const EdgeInsets.only(
  //                                                       right: 10.0),
  //                                               child: Row(
  //                                                 // ignore: prefer_const_literals_to_create_immutables
  //                                                 children: [
  //                                                   Icon(
  //                                                     Icons.card_travel,
  //                                                     color: Colors.black,
  //                                                   ),
  //                                                   SizedBox(
  //                                                     width: 20,
  //                                                   ),
  //                                                   Icon(
  //                                                     Icons.heart_broken,
  //                                                     color: Colors.black,
  //                                                   ),
  //                                                 ],
  //                                               ),
  //                                             )
  //                                           ],
  //                                         ),
  //                                       )
  //                                     // else
  //                                     //   Container(
  //                                     //     width: screenWidth,
  //                                     //     height: 50,
  //                                     //     color: Colors.amber,
  //                                     //     child: Row(
  //                                     //       mainAxisAlignment:
  //                                     //           MainAxisAlignment
  //                                     //               .spaceBetween,
  //                                     //       children: [
  //                                     //         Row(
  //                                     //           children: [
  //                                     //             Row(
  //                                     //               // ignore: prefer_const_literals_to_create_immutables
  //                                     //               children: [
  //                                     //                 Padding(
  //                                     //                   padding:
  //                                     //                       const EdgeInsets
  //                                     //                               .only(
  //                                     //                           left: 20.0),
  //                                     //                   child: Icon(
  //                                     //                     Icons
  //                                     //                         .arrow_back_ios,
  //                                     //                     color: Colors.black,
  //                                     //                   ),
  //                                     //                 ),
  //                                     //               ],
  //                                     //             ),
  //                                     //           ],
  //                                     //         ),
  //                                     //         Padding(
  //                                     //           padding:
  //                                     //               const EdgeInsets.only(
  //                                     //                   right: 10.0),
  //                                     //           child: Row(
  //                                     //             // ignore: prefer_const_literals_to_create_immutables
  //                                     //             children: [
  //                                     //               Icon(
  //                                     //                 Icons.card_travel,
  //                                     //                 color: Colors.black,
  //                                     //               ),
  //                                     //               SizedBox(
  //                                     //                 width: 20,
  //                                     //               ),
  //                                     //               Icon(
  //                                     //                 Icons.heart_broken,
  //                                     //                 color: Colors.black,
  //                                     //               ),
  //                                     //             ],
  //                                     //           ),
  //                                     //         )
  //                                     //       ],
  //                                     //     ),
  //                                     //   )
  //                                   ],
  //                                 )
  //                               else
  //                                 Text("data 2")
  //                             ],
  //                           )
  //                         ],
  //                       ),
  //                     ),
  //                   ],
  //                 )),
  //           ),
  //         ],
  //       ),
  //     ));
  // }
}
