import 'package:flutter/material.dart';
import 'package:flutter_scroll_view/navbar/navbar_active.dart';
import 'package:flutter_scroll_view/navbar/navbar_unactive.dart';

class Product extends StatefulWidget {
  Product({Key? key}) : super(key: key);

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
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
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 132, 171, 187),
        // appBar:
        // scrollController.offset == ''
        //     ? AppBar(
        //         title: Text("Get Scroll Position in Flutter 1"),
        //         backgroundColor: Colors.redAccent)
        //  :
        // AppBar(
        //     title: Text("Get Scroll Position in Flutter 2"),
        //     backgroundColor: Color.fromARGB(255, 136, 127, 127)

        floatingActionButton: Card(
            child: showbtn
                ? Text(
                    "Scroll Position: " + scrollController.offset.toString(),
                    style: TextStyle(fontSize: 20),
                  )
                : Text("")),
        body: SafeArea(
          child: Column(
            children: [
              Column(
                children: [
                  if (scrollController.hasClients)
                    Column(children: [
                      if (scrollController.offset >= 120.0)
                        Navbaractive(screenWidth: screenWidth)
                    ])
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                    controller: scrollController,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 1500,
                          width: 500,
                          child: Column(
                            children: [
                              Column(
                                // mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  if (scrollController.hasClients)
                                    Column(
                                      children: [
                                        if (scrollController.offset <= 120.0)
                                          NavbarUnactive(
                                              screenWidth: screenWidth)
                                        // else
                                        //   Container(
                                        //     width: screenWidth,
                                        //     height: 50,
                                        //     color: Colors.amber,
                                        //     child: Row(
                                        //       mainAxisAlignment:
                                        //           MainAxisAlignment
                                        //               .spaceBetween,
                                        //       children: [
                                        //         Row(
                                        //           children: [
                                        //             Row(
                                        //               // ignore: prefer_const_literals_to_create_immutables
                                        //               children: [
                                        //                 Padding(
                                        //                   padding:
                                        //                       const EdgeInsets
                                        //                               .only(
                                        //                           left: 20.0),
                                        //                   child: Icon(
                                        //                     Icons
                                        //                         .arrow_back_ios,
                                        //                     color: Colors.black,
                                        //                   ),
                                        //                 ),
                                        //               ],
                                        //             ),
                                        //           ],
                                        //         ),
                                        //         Padding(
                                        //           padding:
                                        //               const EdgeInsets.only(
                                        //                   right: 10.0),
                                        //           child: Row(
                                        //             // ignore: prefer_const_literals_to_create_immutables
                                        //             children: [
                                        //               Icon(
                                        //                 Icons.card_travel,
                                        //                 color: Colors.black,
                                        //               ),
                                        //               SizedBox(
                                        //                 width: 20,
                                        //               ),
                                        //               Icon(
                                        //                 Icons.heart_broken,
                                        //                 color: Colors.black,
                                        //               ),
                                        //             ],
                                        //           ),
                                        //         )
                                        //       ],
                                        //     ),
                                        //   )
                                      ],
                                    )
                                  else
                                    NavbarUnactive(screenWidth: screenWidth)
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ));
  }
}
