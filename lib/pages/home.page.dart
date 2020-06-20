import 'package:dash_web/util/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Style stl = new Style();

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: stl.bg,
      body: Row(
        children: [
          Container(
            width: size.width * 0.13,
            height: size.height,
            color: stl.accent,
            padding: EdgeInsets.all(10),
            child: ListView(
              children: [
                SizedBox(
                  height: 30,
                ),
                Image.asset(
                  'assets/images/logo.jpg',
                  width: 80,
                  height: 80,
                ),
                SizedBox(
                  height: 10,
                ),
                Text('JP Tutoriais',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: stl.purpleWeak,
                        fontWeight: FontWeight.w600)),
                SizedBox(
                  height: 40,
                ),
                ListTile(
                    leading: Icon(
                      Icons.home,
                      color: stl.primary,
                    ),
                    title: Text('Dashboard',
                        style: GoogleFonts.poppins(
                            color: stl.primary, fontWeight: FontWeight.w500))),
                Container(
                    decoration: BoxDecoration(
                      color: stl.green,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: stl.green.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 5,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: ListTile(
                        leading: Icon(
                          Icons.credit_card,
                          color: stl.bg,
                        ),
                        title: Text('Cards',
                            style: GoogleFonts.poppins(
                                color: stl.bg, fontWeight: FontWeight.w500)))),
                ListTile(
                    leading: Icon(
                      Icons.transform,
                      color: stl.primary,
                    ),
                    title: Text('Payments',
                        style: GoogleFonts.poppins(
                            color: stl.primary, fontWeight: FontWeight.w500))),
                ListTile(
                    leading: Icon(
                      Icons.graphic_eq,
                      color: stl.primary,
                    ),
                    title: Text('Statistics',
                        style: GoogleFonts.poppins(
                            color: stl.primary, fontWeight: FontWeight.w500))),
                Container(
                  height: 480,
                ),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: ListTile(
                        leading: Icon(
                          Icons.exit_to_app,
                          color: stl.primary,
                        ),
                        title: Text('Exit',
                            style: GoogleFonts.poppins(
                                color: stl.primary,
                                fontWeight: FontWeight.w500))))
              ],
            ),
          ),
          Container(
            width: size.width * 0.87,
            height: size.height,
            color: stl.bg,
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Your cards',
                        style: GoogleFonts.poppins(
                            color: stl.purpleWeak,
                            fontSize: 30,
                            fontWeight: FontWeight.w600)),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              width: 140,
                              height: 45,
                              decoration: BoxDecoration(
                                color: stl.blue,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: stl.blue.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 7,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Center(
                                  child: Text('Add card',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w300)))),
                          SizedBox(
                            width: 30,
                          ),
                          Icon(
                            Icons.notifications,
                            color: stl.primary,
                          )
                        ]),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Card(
                      color: stl.pink,
                      width: 420,
                      height: 250,
                    ),
                    Card(
                      color: stl.yellow,
                      width: 400,
                      height: 230,
                    ),
                    Container(
                        alignment: Alignment.centerLeft,
                        width: 450,
                        height: 300,
                        child: Stack(
                          overflow: Overflow.visible,
                          alignment: Alignment.center,
                          children: [
                            Positioned(
                              left: 90,
                              child: CardSmall(
                                color: stl.pink,
                                width: 360,
                                height: 190,
                              ),
                            ),
                            Positioned(
                                left: 45,
                                child: CardSmall(
                                  color: stl.yellow,
                                  width: 380,
                                  height: 210,
                                )),
                            Positioned(
                                left: 0,
                                child: Card(
                                  color: stl.purple,
                                  width: 400,
                                  height: 230,
                                )),
                          ],
                        )),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 1200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('LIMITS',
                              style: GoogleFonts.poppins(
                                  color: stl.purpleWeak,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  width: 420,
                                  height: 120,
                                  padding: EdgeInsets.all(20),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Image.asset(
                                          'assets/images/graph.png',
                                          width: 120,
                                          height: 120,
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Text('Credit limit',
                                                style: GoogleFonts.poppins(
                                                    color: stl.purpleWeak,
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.w500)),
                                            Row(children: [
                                              Text('\$1500',
                                                  style: GoogleFonts.poppins(
                                                      color: stl.purple,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                              Text(' of ',
                                                  style: GoogleFonts.poppins(
                                                      color: stl.primary,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                              Text('\$2000',
                                                  style: GoogleFonts.poppins(
                                                      color: stl.purple,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                            ])
                                          ],
                                        ),
                                      ])),
                              SizedBox(
                                width: 100,
                              ),
                              Container(
                                  width: 420,
                                  height: 120,
                                  padding: EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                    color: stl.purple,
                                    borderRadius: BorderRadius.circular(30),
                                    boxShadow: [
                                      BoxShadow(
                                        color: stl.purple.withOpacity(0.5),
                                        spreadRadius: 1,
                                        blurRadius: 7,
                                        offset: Offset(
                                            0, 3), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Image.asset(
                                        'assets/images/graph2.png',
                                        width: 120,
                                        height: 120,
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text('Online limit',
                                              style: GoogleFonts.poppins(
                                                  color: Colors.white,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500)),
                                          Row(children: [
                                            Text('\$1200',
                                                style: GoogleFonts.poppins(
                                                    color: Colors.white,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w500)),
                                            Text(' of ',
                                                style: GoogleFonts.poppins(
                                                    color: stl.primary,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w500)),
                                            Text('\$2500',
                                                style: GoogleFonts.poppins(
                                                    color: Colors.white,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w500)),
                                          ])
                                        ],
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Text('BASIC TRANSFER STATISTICS',
                              style: GoogleFonts.poppins(
                                  color: stl.purpleWeak,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600)),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                              width: size.width,
                              height: 150,
                              decoration: BoxDecoration(
                                color: stl.pink,
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                    color: stl.pink.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 7,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: null),
                        ],
                      ),
                    ),
                    Container(
                      width: 400,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 35,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                  width: 360,
                                  height: 370,
                                  decoration: BoxDecoration(
                                    color: stl.greenWeak,
                                    borderRadius: BorderRadius.circular(30),
                                    boxShadow: [
                                      BoxShadow(
                                        color: stl.greenWeak.withOpacity(0.5),
                                        spreadRadius: 1,
                                        blurRadius: 7,
                                        offset: Offset(
                                            0, 3), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: null),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: stl.primary,
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Card extends StatelessWidget {
  final double width;
  final double height;
  final Color color;

  Card({this.width, this.height, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: color.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
                alignment: Alignment.topRight,
                child: Icon(Icons.apps, color: stl.bg, size: 40)),
            SizedBox(
              height: 10,
            ),
            Text('1417 USD',
                style: GoogleFonts.poppins(
                    color: stl.bg, fontSize: 30, fontWeight: FontWeight.w700)),
            Text('º º º 5486',
                style: GoogleFonts.poppins(
                    color: stl.bg, fontSize: 25, fontWeight: FontWeight.w500)),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('01/22',
                    style: GoogleFonts.poppins(
                        color: stl.bg,
                        fontSize: 20,
                        fontWeight: FontWeight.w600)),
                Text('VISA',
                    style: GoogleFonts.poppins(
                        color: stl.bg,
                        fontSize: 30,
                        fontWeight: FontWeight.w800)),
              ],
            )
          ],
        ));
  }
}

class CardSmall extends StatelessWidget {
  final double width;
  final double height;
  final Color color;

  CardSmall({this.width, this.height, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: color.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: null);
  }
}
