import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zakat/components/calculate_button.dart';
import 'package:zakat/constants/styles.dart';
import 'package:zakat/constants/styles.dart';
import 'package:zakat/components/element_card.dart';
import 'package:zakat/components/roundedButton.dart';

class AnimalScreen extends StatelessWidget {
  const AnimalScreen({Key? key}) : super(key: key);

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
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 25,
                  ),
                ),
                SizedBox(
                  width: 100,
                ),
                Text(
                  "Animals",
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
                height: 500,
                width: 320,
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
                        "Enter the number of the Camels",
                        style: GoogleFonts.nunitoSans(
                            color: Colors.black, fontSize: 15),
                      ),
                      Container(
                        decoration: BoxDecoration(),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 20, left: 70, right: 70, bottom: 20),
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              isDense: true,
                              contentPadding: EdgeInsets.all(10),
                              hintText: 'Above 30 Camels',
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(width: 10)),
                              hintStyle: GoogleFonts.nunitoSans(fontSize: 12),
                              //  border: InputBorder(borderSide:20, ),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "Enter the number of the Goats",
                        style: GoogleFonts.nunitoSans(
                            color: Colors.black, fontSize: 15),
                      ),
                      Container(
                        decoration: BoxDecoration(),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 20, left: 70, right: 70, bottom: 20),
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              isDense: true,
                              contentPadding: EdgeInsets.only(
                                  top: 10, left: 10, bottom: 10, right: 5),
                              hintText: 'Above 40 Goats',
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(width: 10)),
                              hintStyle: GoogleFonts.nunitoSans(fontSize: 12),
                              //  border: InputBorder(borderSide:20, ),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "Enter the number of the Sheep",
                        style: GoogleFonts.nunitoSans(
                            color: Colors.black, fontSize: 15),
                      ),
                      Container(
                        decoration: BoxDecoration(),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 20, left: 70, right: 70, bottom: 20),
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              isDense: true,
                              contentPadding: EdgeInsets.only(
                                  top: 10, left: 10, bottom: 10, right: 5),
                              hintText: 'Above 40 Sheep',
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(width: 10)),
                              hintStyle: GoogleFonts.nunitoSans(fontSize: 12),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      CalculateButton(
                        onpressed: () {},
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
