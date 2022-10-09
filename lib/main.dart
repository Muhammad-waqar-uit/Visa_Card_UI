import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.lime),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color(0xffd1A212B),
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    margin: EdgeInsets.only(left: 200),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              Colors.pink.shade700,
                              Colors.orange.shade500
                            ],
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft),
                        borderRadius: BorderRadius.circular(100)),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(right: 270),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              Colors.pink.shade700,
                              Colors.orange.shade500
                            ],
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft),
                        borderRadius: BorderRadius.circular(100)),
                  ),
                ],
              ),
            ),
            frostedCard(context)
          ],
        ),
      ),
    );
  }
}

Widget frostedCard(BuildContext context) {
  return Center(
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        child: Stack(children: [
          BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 7,
              sigmaY: 7,
            ),
            child: Container(
              height: 220,
              width: 360,
            ),
          ),
          Opacity(
            opacity: 0.2,
            child: Image.asset(
              "assets/noise.png",
              width: 360,
              height: 230,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: 230,
            width: 360,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                  )
                ],
                border: Border.all(
                    color: Colors.white.withOpacity(0.2), width: 1.0),
                // color: Colors.blue,
                gradient: LinearGradient(
                  colors: [
                    Colors.white.withOpacity(0.5),
                    Colors.white.withOpacity(0.2)
                  ],
                  stops: [0.0, 1.0],
                ),
                borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 270,
                    child: SvgPicture.asset(
                      "assets/visa.svg",
                      width: 66,
                      color: Colors.white.withOpacity(0.5),
                      alignment: Alignment.topLeft,
                    ),
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  Text(
                    "7864   6457   8368   0364   ",
                    style: TextStyle(
                        fontSize: 23, color: Colors.white.withOpacity(0.4)),
                  ),
                  SizedBox(
                    width: 275,
                    child: Row(
                      children: [
                        Text(
                          "1234",
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                              fontSize: 12),
                        ),
                        const SizedBox(
                          width: 100,
                        ),
                        Text(
                          "VALID \n THRU",
                          style: TextStyle(
                              fontSize: 6,
                              color: Colors.white.withOpacity(0.5),
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "  07/25",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.white.withOpacity(0.5)),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                      width: 275,
                      child: Text(
                        "Muhamad Waqar",
                        style: GoogleFonts.aclonica(
                          textStyle: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontWeight: FontWeight.bold,
                            fontSize: 18
                          )
                        ),
                      ))
                ],
              ),
            ),
          ),
        ]),
      ),
    ),
  );
}