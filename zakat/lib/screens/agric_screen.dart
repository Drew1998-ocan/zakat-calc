import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zakat/components/calculate_button.dart';
import 'package:zakat/constants/styles.dart';

class AgricScreen extends StatelessWidget {
  const AgricScreen({Key? key}) : super(key: key);

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
                  "Agricultural Products",
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
                        "Enter the quantity of the products from natural irrigations",
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
                              hintText: 'Above 20 kg',

                              border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 10, color: kgrey)),
                              hintStyle: GoogleFonts.nunitoSans(fontSize: 12),
                              //  border: InputBorder(borderSide:20, ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        "Enter the quantity of the products from artificial irrigations",
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
                              hintText: 'Above 10 kg',

                              border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 10, color: kgrey)),
                              hintStyle: GoogleFonts.nunitoSans(fontSize: 12),
                              //  border: InputBorder(borderSide:20, ),
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
