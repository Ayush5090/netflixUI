import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:netflix_ui/provider/season_provider.dart';
import 'package:netflix_ui/res/assets.dart';
import 'package:netflix_ui/res/strings.dart';
import 'package:netflix_ui/widgets/play_btn_container.dart';
import 'package:provider/provider.dart';

class EpisodesTabBarView extends StatelessWidget {
  const EpisodesTabBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Consumer(builder: (ctx, _, __) {
            return PopupMenuButton(
              color: Colors.grey[900],
              onSelected: (value) {
                ctx.read<SeasonProvider>().selectSeason(value);
              },
              itemBuilder: (context) {
                return [
                  const PopupMenuItem(
                      value: 'Season 1',
                      child: Text(
                        'Season 1',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      )),
                  const PopupMenuItem(
                      value: 'Season 2',
                      child: Text(
                        'Season 2',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      )),
                  const PopupMenuItem(
                      value: 'Season 3',
                      child: Text(
                        'Season 3',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      )),
                  const PopupMenuItem(
                      value: 'Season 4',
                      child: Text(
                        'Season 4',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      )),
                  const PopupMenuItem(
                      value: 'Season 5',
                      child: Text(
                        'Season 5',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      )),
                  const PopupMenuItem(
                      value: 'Season 6',
                      child: Text(
                        'Season 6',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      )),
                ];
              },
              child: Container(
                width: 120,
                height: 35,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      ctx.watch<SeasonProvider>().season ?? 'Season 6',
                      style: const TextStyle(fontSize: 12, color: Colors.white),
                    ),
                    const Icon(
                      Icons.arrow_drop_down_rounded,
                      size: 23,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            );
          }),
          const Gap(10),
          Row(
            children: [
              Container(
                width: 120,
                height: 75,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: const DecorationImage(
                      image: AssetImage(AppImages.episode1),
                      fit: BoxFit.fill,
                    )),
                child: const PlayBtnContainer(),
              ),
              const Gap(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '1. Solaricks',
                    style: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    '22m',
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              const Icon(
                Icons.download,
                color: Colors.white,
                size: 25,
              ),
              const Gap(10),
            ],
          ),
          const Gap(10),
          const Text(
            AppStrings.S6E1_TEXT,
            style: TextStyle(fontSize: 9, color: Colors.grey),
          ),
          const Gap(25),
          Row(
            children: [
              Container(
                width: 120,
                height: 75,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: const DecorationImage(
                      image: AssetImage(AppImages.episode2),
                      fit: BoxFit.fill,
                    )),
                child: const PlayBtnContainer(),
              ),
              const Gap(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '2. Rick:A Mort Well Lived',
                    style: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    '22m',
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              const Icon(
                Icons.download,
                color: Colors.white,
                size: 25,
              ),
              const Gap(10),
            ],
          ),
          const Gap(10),
          const Text(
            AppStrings.S6E2_TEXT,
            style: TextStyle(fontSize: 9, color: Colors.grey),
          )
        ],
      ),
    );
  }
}
