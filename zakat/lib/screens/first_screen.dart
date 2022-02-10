import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zakat/components/element_card.dart';
import 'package:zakat/constants/styles.dart';
import 'package:zakat/model/money_cal.dart';
import 'package:zakat/screens/animal_screen.dart';
import 'package:zakat/screens/gold_screen.dart';
import 'agric_screen.dart';
import 'money_screen.dart';

class FirstScreen extends StatelessWidget {
  // final moneyState = Get.put(MoneyHelper());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: kGreen,
      child: Column(children: [
        Container(
          height: 200,
          padding: EdgeInsets.only(
            left: 40,
            top: 70,
          ),
          child: Text(
            'Select a field to fill the values',
            style: GoogleFonts.nunitoSans(
                fontSize: 30,
                color: kWhite,
                fontWeight: FontWeight.w600,
                letterSpacing: -2,
                height: 1.2),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Expanded(
          child: Column(
            children: [
              Expanded(
                child: Container(
                  height: 540,
                  padding: EdgeInsets.only(top: 40, left: 20, right: 20),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 0,
                        blurRadius: 20,
                        offset: Offset(0, 4),
                      ),
                    ],
                    color: kWhite,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  child: SingleChildScrollView(
                    padding: EdgeInsets.fromLTRB(5, 10, 5, 0),
                    scrollDirection: Axis.vertical,
                    child: Column(children: [
                      InkWell(
                        onTap: () {
                          Get.to(MoneyScreen());
                        },
                        child: ElementCard(
                          headerTitle: 'Money',
                          descriptionText:
                              'this part pertains only money and silver / gold ',
                          clickText: 'Click for More',
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(AnimalScreen());
                        },
                        child: ElementCard(
                          headerTitle: 'Animals',
                          descriptionText:
                              'this part pertains only animal and agricultural products',
                          clickText: 'Click for More',
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(AgricScreen());
                        },
                        child: ElementCard(
                          headerTitle: 'Agricultural products',
                          descriptionText:
                              'this part pertains only agricultural products',
                          clickText: 'Click for More',
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(GoldScreen());
                        },
                        child: ElementCard(
                          headerTitle: 'Gold and Silver',
                          descriptionText:
                              'this part pertains only gold that you have !',
                          clickText: 'Click for More',
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ]),
                  ),
                ),
              ),
            ],
          ),
        )
      ]),
    ));
  }
}


// AssetImage('assets/me.png')
//  'Gold And Money'
// 'this part pertains only money and silver / gold'