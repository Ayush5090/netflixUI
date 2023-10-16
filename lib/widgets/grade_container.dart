import 'package:flutter/material.dart';
import 'package:netflix_ui/res/colors.dart';

class GradeContainer extends StatelessWidget {
  const GradeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 18,
      height: 18,
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: AppColors.DARK_GREY, borderRadius: BorderRadius.circular(2)),
      child: Text(
        'A',
        style: TextStyle(fontSize: 10, color: Colors.white.withOpacity(0.5)),
      ),
    );
  }
}
