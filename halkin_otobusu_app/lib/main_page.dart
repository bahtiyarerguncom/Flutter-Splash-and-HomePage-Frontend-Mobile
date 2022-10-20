import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'splashscreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 144, 94, 94),
        body: Container(
          decoration: BoxDecoration(
            image: new DecorationImage(
              opacity: 0.9,
              image: new AssetImage(
                "assets/images/istanbul4.jpg",
              ),
              colorFilter: ColorFilter.mode(
                  Colors.red.withOpacity(0.9), BlendMode.dstATop),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            // verticalDirection: VerticalDirection.down,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color.fromARGB(255, 177, 50, 41),
                        Color.fromARGB(255, 120, 16, 10),
                      ],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 206, 175, 175),
                        blurRadius: 6,
                        offset: Offset(0, 0.1), // Shadow position
                      ),
                    ],
                    color: Colors.red,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(150),
                      bottomRight: Radius.circular(150),
                    )),
                width: double.infinity,
                height: 100,

                // margin: EdgeInsets.all(30.0),
                // padding: EdgeInsets.all(0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    // Text("text", style: TextStyle()),
                    Text(
                      "Halkın!",
                      style: GoogleFonts.praise(
                        shadows: [
                          Shadow(
                            blurRadius: 20.0,
                            color: Color.fromARGB(255, 0, 0, 0),
                            offset: Offset(5.0, 5.0),
                          ),
                        ],
                        color: Color.fromARGB(255, 242, 227, 227),
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "Otobüsü",
                      style: GoogleFonts.praise(
                        shadows: [
                          Shadow(
                            blurRadius: 20.0,
                            color: Color.fromARGB(255, 0, 0, 0),
                            offset: Offset(5.0, 5.0),
                          ),
                        ],
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              buildMainPageContainers(text: "Haberler", icon: Icons.newspaper),
              buildMainPageContainers(
                  text: "Otobüs", icon: Icons.bus_alert_rounded),
              buildMainPageContainers(
                  text: "Seyir Defteri", icon: Icons.wb_cloudy_sharp),
              buildMainPageContainers(
                  text: "Durak Oluştur!", icon: Icons.edit_rounded),

              // 2 BÜYÜK CONTAİNER
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Text(
                            "Destek Ol!",
                            style: GoogleFonts.jost(
                              shadows: [
                                Shadow(
                                  blurRadius: 20.0,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  offset: Offset(1.0, 2.0),
                                ),
                              ],
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Icon(
                            Icons.plus_one_sharp,
                            shadows: <Shadow>[
                              Shadow(color: Colors.black, blurRadius: 30.0)
                            ],
                            color: Colors.white,
                            size: 50,
                          ),
                        ],
                      ),
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.only(
                        top: 3,
                        left: 20,
                        right: 20,
                        bottom: 15,
                      ),
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Color.fromARGB(255, 223, 62, 50),
                            Color.fromARGB(255, 88, 24, 20),
                          ],
                        ),
                        // color: Color.fromARGB(255, 0, 0, 0),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 255, 255, 255)
                                .withOpacity(0.17),
                            offset: Offset(0, 0.1),
                            blurRadius: 30,
                            spreadRadius: 0.9,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Text(
                            "İletişim",
                            style: GoogleFonts.jost(
                              shadows: [
                                Shadow(
                                  blurRadius: 20.0,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  offset: Offset(1.0, 2.0),
                                ),
                              ],
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Icon(
                            Icons.phone_enabled,
                            shadows: <Shadow>[
                              Shadow(color: Colors.black, blurRadius: 30.0)
                            ],
                            color: Colors.white,
                            size: 45,
                          ),
                        ],
                      ),
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.only(
                        top: 3,
                        left: 20,
                        right: 20,
                        bottom: 15,
                      ),
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Color.fromARGB(255, 223, 62, 50),
                            Color.fromARGB(255, 88, 24, 20),
                          ],
                        ),
                        // color: Color.fromARGB(255, 0, 0, 0),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 255, 255, 255)
                                .withOpacity(0.17),
                            offset: Offset(0, 0.1),
                            blurRadius: 30,
                            spreadRadius: 0.9,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildMainPageContainers({
  required String text,
  required IconData icon,
  Widget? widget,
}) {
  return Container(
    padding: EdgeInsets.all(30),
    margin: EdgeInsets.only(
      top: 3,
      left: 20,
      right: 20,
      bottom: 15,
    ),
    width: double.infinity,
    height: 100,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: GoogleFonts.jost(
            shadows: [
              Shadow(
                blurRadius: 20.0,
                color: Color.fromARGB(255, 0, 0, 0),
                offset: Offset(1.0, 2.0),
              ),
            ],
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.w500,
          ),
        ),
        Icon(
          icon,
          shadows: <Shadow>[Shadow(color: Colors.black, blurRadius: 30.0)],
          color: Colors.white,
          size: 50,
        ),
      ],
    ),
    decoration: BoxDecoration(
      gradient: const LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Color.fromARGB(255, 223, 62, 50),
          Color.fromARGB(255, 88, 24, 20),
        ],
      ),
      // color: Color.fromARGB(255, 0, 0, 0),
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
          color: Color.fromARGB(255, 255, 255, 255).withOpacity(0.17),
          offset: Offset(0, 0.1),
          blurRadius: 30,
          spreadRadius: 0.9,
        ),
      ],
    ),
  );
}
