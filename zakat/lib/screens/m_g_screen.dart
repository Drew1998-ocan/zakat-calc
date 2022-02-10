import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zakat/components/choose_button.dart';
import 'package:zakat/constants/styles.dart';
import 'package:zakat/screens/gold_screen.dart';
import 'package:zakat/screens/money_screen.dart';

class MoneyAndGoldScreen extends StatelessWidget {
  const MoneyAndGoldScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Wrap(children: [
          Container(
            padding: EdgeInsets.only(top: 20),
            color: kDarkWhite,
            child: Column(children: [
              Row(children: [
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.arrow_back_ios,
                  size: 25,
                ),
                SizedBox(
                  width: 100,
                ),
                Text(
                  "Money & Gold",
                  style: GoogleFonts.nunitoSans(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ]),
              SizedBox(
                height: 50,
              ),
              Container(
                width: 320,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: kWhite,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12.withOpacity(0.03),
                        blurRadius: 10,
                        spreadRadius: 1)
                  ],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  padding: EdgeInsets.fromLTRB(5, 10, 5, 0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        "Choose the area where you want to make payments in",
                        style: GoogleFonts.nunitoSans(
                            color: Colors.black, fontSize: 15),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ChooseButton(
                        title: 'Money',
                        onPressed: () {
                          Get.to(() => MoneyScreen());
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ChooseButton(
                        title: 'Gold',
                        onPressed: () => Get.to(() => GoldScreen()),
                      ),
                      SizedBox(
                        height: 50,
                      )
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}
