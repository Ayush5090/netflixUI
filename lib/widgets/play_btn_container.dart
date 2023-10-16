import 'package:flutter/material.dart';

class PlayBtnContainer extends StatelessWidget {
  const PlayBtnContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35,
      height: 35,
      decoration: BoxDecoration(
          color: Colors.black38,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white, width: 2)),
      child: const Icon(
        Icons.play_arrow,
        size: 20,
        color: Colors.white,
      ),
    );
  }
}
