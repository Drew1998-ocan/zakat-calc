import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zakat/components/calculate_button.dart';
import 'package:zakat/constants/styles.dart';

class GoldScreen extends StatelessWidget {
  const GoldScreen({Key? key}) : super(key: key);

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
                  "Gold",
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
                        "Enter the quality of gold that you have",
                        style: GoogleFonts.nunitoSans(
                            color: Colors.black, fontSize: 15),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('24 Caret',
                              style: GoogleFonts.nunitoSans(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700)),
                          SizedBox(
                            width: 50,
                          ),
                          Container(
                            height: 50,
                            width: 120,
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(width: 10, color: kgrey)),
                                hintStyle: GoogleFonts.nunitoSans(fontSize: 12),
                                isDense: true,
                                contentPadding: EdgeInsets.all(10),
                                hintText: 'above 0.8g',
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 300,
                        height: 1,
                        color: kgrey,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('21 Caret',
                              style: GoogleFonts.nunitoSans(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700)),
                          SizedBox(
                            width: 50,
                          ),
                          Container(
                            height: 50,
                            width: 120,
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(width: 10, color: kgrey)),
                                hintStyle: GoogleFonts.nunitoSans(fontSize: 12),
                                isDense: true,
                                contentPadding: EdgeInsets.all(10),
                                hintText: 'above 0.75g',
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 300,
                        height: 1,
                        color: kgrey,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('18 Caret',
                              style: GoogleFonts.nunitoSans(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700)),
                          SizedBox(
                            width: 50,
                          ),
                          Container(
                            height: 50,
                            width: 120,
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(width: 10, color: kgrey)),
                                hintStyle: GoogleFonts.nunitoSans(fontSize: 12),
                                isDense: true,
                                contentPadding: EdgeInsets.all(10),
                                hintText: 'above 0.5g',
                              ),
                            ),
                          )
                        ],
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
