import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zakat/constants/styles.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({
    Key? key,
    required this.onpressed,
  }) : super(key: key);
  final Function onpressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Material(
          color: kGreen,
          elevation: 0.5,
          borderRadius: BorderRadius.circular(5),
          child: MaterialButton(
            height: 30,
            minWidth: 150,
            onPressed: () => onpressed,
            child: Text(
              'Calculate',
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
