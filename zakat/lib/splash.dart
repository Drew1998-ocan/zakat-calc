import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zakat/screens/first_screen.dart';

import 'constants/styles.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigator();
  }

  _navigator() async {
    await Future.delayed(Duration(milliseconds: 5000));
    Get.replace(Get.to(FirstScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 300,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  // color: kGreen.withOpacity(1),
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
                  fontSize: 40,
                  color: kGreen,
                  fontWeight: FontWeight.w900,
                  letterSpacing: -3,
                  height: 1.2,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
