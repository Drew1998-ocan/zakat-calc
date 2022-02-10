import 'package:flutter/material.dart';
import 'package:zakat/constants/styles.dart';

class RoundButton extends StatelessWidget {
  final Color colours;
  final Color titleColor;
  final Color iconColor;
  final String title;
  final Function onPressed;
  RoundButton(
      {required this.colours,
      required this.title,
      required this.onPressed,
      required this.titleColor,
      required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 0.5,
        color: colours,
        borderRadius: BorderRadius.circular(30),
        child: MaterialButton(
          height: 40,
          minWidth: 300,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 20,
              ),
              Center(
                child: Text(
                  title,
                  style: TextStyle(
                    color: titleColor,
                  ),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Icon(
                Icons.arrow_right_alt_outlined,
                size: 40,
                color: iconColor,
              )
            ],
          ),
          onPressed: onPressed(),
        ),
      ),
    );
  }
}
