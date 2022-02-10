import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zakat/screens/agric_screen.dart';
import 'package:zakat/screens/animal_screen.dart';
import 'package:zakat/screens/first_screen.dart';
import 'package:zakat/screens/gold_screen.dart';
import 'package:get/get.dart';
import 'package:zakat/screens/home_page_screen.dart';
import 'package:zakat/screens/money_screen.dart';
import 'package:zakat/splash.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

import 'constants/styles.dart';

// import 'package:zakat/screens/home_page_screen.dart';

void main() {
  runApp(ZakatApp());
}

class ZakatApp extends StatelessWidget {
  const ZakatApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Zakat App',
      home: AnimatedSplashScreen(
          duration: 3000,
          splash: Scaffold(
            body: Center(
              child: Wrap(children: [
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 200,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          // color: kGreen.withOpacity(1),
                          color: Colors.white,
                          image: DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage('assets/me.png'),
                          ),
                        ),
                      ),
                      Text(
                        'welcome to My Zakat App',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.nunitoSans(
                          fontSize: 35,
                          color: kGreen,
                          fontWeight: FontWeight.w900,
                          letterSpacing: -2,
                          height: 1.2,
                        ),
                      )
                    ],
                  ),
                ),
              ]),
            ),
          ),
          nextScreen: FirstScreen()),
    );
  }
}
