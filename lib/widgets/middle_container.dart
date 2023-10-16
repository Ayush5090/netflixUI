import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MiddleContainer extends StatelessWidget {
  const MiddleContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 10),
      color: Colors.black,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Icon(
                Icons.add,
                color: Colors.white,
                size: 33,
              ),
              Gap(5),
              Text(
                'My List',
                style: TextStyle(fontSize: 9, color: Colors.grey),
              )
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.thumb_up_alt_outlined,
                color: Colors.white,
                size: 27,
              ),
              Gap(10),
              Text(
                'Rate',
                style: TextStyle(fontSize: 9, color: Colors.grey),
              )
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.share,
                color: Colors.white,
                size: 27,
              ),
              Gap(10),
              Text(
                'Share',
                style: TextStyle(fontSize: 9, color: Colors.grey),
              )
            ],
          ),
          Column(
            children: [
              Gap(5),
              Icon(
                Icons.download,
                color: Colors.white,
                size: 27,
              ),
              Gap(2),
              Text(
                'Download\nSeason 6',
                style: TextStyle(fontSize: 9, color: Colors.grey),
              )
            ],
          ),
        ],
      ),
    );
  }
}
