import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zakat/constants/styles.dart';
import 'package:zakat/components/roundedButton.dart';
import 'package:zakat/screens/first_screen.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
            image: AssetImage('assets/me.png'),
          ))),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [kGreen.withOpacity(1), kFadingGreen.withOpacity(0.7)],
                begin: Alignment.bottomCenter,
                end: Alignment.topLeft,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 50),
            child: Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Welcome to Zakat App Calculator',
                  style: GoogleFonts.nunitoSans(
                      fontSize: 50,
                      fontWeight: FontWeight.w800,
                      color: kWhite,
                      letterSpacing: -3,
                      height: 1),
                ),
                RoundButton(
                    colours: kWhite,
                    title: "let's get started",
                    onPressed: () {
                      Get.to(FirstScreen());
                    },
                    titleColor: kGreen,
                    iconColor: kGreen)
              ],
            )),
          )
        ],
      ),
    );
  }
}
