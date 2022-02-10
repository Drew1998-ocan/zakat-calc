import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zakat/constants/styles.dart';

class ChooseButton extends StatelessWidget {
  final String title;
  final Function onPressed;

  const ChooseButton({required this.onPressed, required this.title});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Material(
          color: kGreen,
          elevation: 5,
          borderRadius: BorderRadius.circular(50),
          child: MaterialButton(
            height: 30,
            minWidth: 150,
            onPressed: onPressed(),
            child: Text(
              title,
              style: GoogleFonts.nunitoSans(
                color: kWhite,
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 20,
        )
      ],
    );
  }
}
