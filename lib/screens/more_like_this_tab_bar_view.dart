import 'package:flutter/material.dart';
import 'package:netflix_ui/res/assets.dart';

class MoreLikeTabBarView extends StatelessWidget {
  const MoreLikeTabBarView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      AppImages.onePiece,
      AppImages.jujutsu,
      AppImages.onePieceFRed,
      AppImages.onePieceReal,
      AppImages.mushuko,
      AppImages.onePieceReal
    ];
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: imgList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisExtent: 165,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        itemBuilder: (context, index) {
          return Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                    image: AssetImage(imgList[index]), fit: BoxFit.fill)),
            child: Image.asset(
              AppImages.netflixLogo,
              width: 20,
              height: 15,
              fit: BoxFit.fill,
            ),
          );
        },
      ),
    );
  }
}
