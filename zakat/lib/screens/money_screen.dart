import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zakat/components/calculate_button.dart';
import 'package:zakat/constants/styles.dart';
import 'package:zakat/model/money_cal.dart';

class MoneyScreen extends StatefulWidget {
  // const MoneyScreen({Key? key}) : super(key: key);

  @override
  _MoneyScreenState createState() => _MoneyScreenState();
}

class _MoneyScreenState extends State<MoneyScreen> {
  TextEditingController moneyController = TextEditingController();

  var moneyEntered;

  void calculateZakat() {
    var moneyEntered = moneyController.value;
    moneyEntered as double;
    if (moneyEntered as double > 705000) {
      // moneyEntered = moneyEntered   2.5;
    }
  }

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
                  onTap: () => {Get.back()},
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 25,
                  ),
                ),
                SizedBox(
                  width: 100,
                ),
                Text(
                  "Money",
                  // " cal : ${moneyState.newAmountOfMoney}",
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
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          "Enter the amount of money that you have",
                          style: GoogleFonts.nunitoSans(
                              color: Colors.black, fontSize: 15),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 20, left: 70, right: 70, bottom: 20),
                          child: TextFormField(
                            controller: moneyController,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              isDense: true,
                              contentPadding: EdgeInsets.all(10),
                              hintText: 'Above 800.000,00 dz',

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
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: kGreen,
                          ),
                          child: Text(
                            'CALCULATE',
                            style: GoogleFonts.nunitoSans(
                              color: kWhite,
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                            ),
                          )),
                      SizedBox(
                        height: 50,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),

              // the payment calculated
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
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          "Your Zakat Payment Amount Is",
                          style: GoogleFonts.nunitoSans(
                              color: Colors.black, fontSize: 15),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Obx(
                        () => (Text(
                          '',
                          style: GoogleFonts.nunitoSans(
                            color: kGreen,
                            fontWeight: FontWeight.w800,
                            fontSize: 20,
                          ),
                        )),
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
