import 'dart:async';
import 'main_page.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:eticaretapp/main_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // @override
  // void initState() {
  //   super.initState();
  //   Timer(const Duration(seconds: 5), () {
  //     Navigator.pushReplacement(
  //         context,
  //         MaterialPageRoute(
  //           builder: (context) => const HomePage(),
  //         ));
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Halkın Otobüsü",
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            color: Colors.red,

            image: new DecorationImage(
              opacity: 0.95,
              image: new AssetImage(
                "assets/images/bgsplash.jpg",
              ),
              colorFilter: ColorFilter.mode(
                  Colors.red.withOpacity(0.9), BlendMode.dstATop),
              fit: BoxFit.fill,
            ),
            // gradient: LinearGradient(
            //   colors: [
            //     Color.fromARGB(255, 169, 13, 2),
            //     Color.fromARGB(255, 202, 17, 17),
            //   ],
            //   begin: Alignment.bottomLeft,
            //   end: Alignment.topRight,
            // ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                height: 80,
              ),
              Container(
                width: 400.0,
                height: 250.0,
                decoration: BoxDecoration(
                  image: new DecorationImage(
                    opacity: 0.77,
                    image: new AssetImage(
                      "assets/images/bus.png",
                    ),

                    // child: Image.asset(
                    //   "assets/images/bus.png",
                    //   width: 400.0,
                    //   height: 250.0,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.17),
                      offset: Offset(0, 1),
                      blurRadius: 50,
                      spreadRadius: 0.9,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Text(
                      "Halkın!",
                      style: GoogleFonts.praise(
                        shadows: [
                          Shadow(
                            blurRadius: 30.0,
                            color: Color.fromARGB(255, 0, 0, 0),
                            offset: Offset(7.0, 7.0),
                          ),
                        ],
                        color: Color.fromARGB(255, 242, 227, 227),
                        fontSize: 70,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Otobüsü",
                      style: GoogleFonts.praise(
                        shadows: [
                          Shadow(
                            blurRadius: 30.0,
                            color: Color.fromARGB(255, 0, 0, 0),
                            offset: Offset(7.0, 7.0),
                          ),
                        ],
                        color: Color.fromARGB(255, 237, 212, 212),
                        fontSize: 100,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    DefaultTextStyle(
                      style: GoogleFonts.praise(
                        fontSize: 30.0,
                      ),
                      child: Opacity(
                        opacity: 0.7,
                        child: AnimatedTextKit(
                          totalRepeatCount: 2,
                          animatedTexts: [
                            TyperAnimatedText('Daha adil bir Türkiye için,'),
                            TyperAnimatedText('halka ve yollara adanmış,'),
                            TyperAnimatedText('sizin otobüsünüz.'),
                            TyperAnimatedText('Sadece Halkın!'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              LoadingAnimationWidget.twistingDots(
                leftDotColor: Color.fromARGB(255, 221, 30, 16),
                rightDotColor: Color.fromARGB(255, 228, 213, 213),
                // color: Color.fromARGB(255, 219, 181, 181),
                size: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
