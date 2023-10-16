import 'package:flutter/material.dart';

class AppBtn extends StatelessWidget {
  String text;
  VoidCallback onTap;
  Icon suffixIcon;
  Color? btnColor;
  Color? textColor;
  AppBtn(
      {super.key,
      required this.text,
      required this.onTap,
      required this.suffixIcon,
      this.btnColor,
      this.textColor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
            backgroundColor: btnColor ?? Colors.white,
            fixedSize: const Size(double.infinity, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            suffixIcon,
            Text(
              ' $text',
              style: TextStyle(color: textColor ?? Colors.black),
            )
          ],
        ));
  }
}
