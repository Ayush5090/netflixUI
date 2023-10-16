import 'package:flutter/material.dart';

class HDContainer extends StatelessWidget {
  const HDContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 16,
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2),
          border: Border.all(color: Colors.white.withOpacity(0.5))),
      child: Text(
        'HD',
        style: TextStyle(
            fontSize: 7,
            color: Colors.white.withOpacity(0.5),
            fontWeight: FontWeight.w700),
      ),
    );
  }
}
