import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:netflix_ui/res/colors.dart';
import 'package:netflix_ui/res/strings.dart';
import 'package:netflix_ui/screens/episodes.dart';
import 'package:netflix_ui/screens/more_like_this_tab_bar_view.dart';
import 'package:netflix_ui/screens/video_screen.dart';
import 'package:netflix_ui/widgets/app_btn.dart';
import 'package:netflix_ui/widgets/custom_app_bar.dart';
import 'package:netflix_ui/widgets/grade_container.dart';
import 'package:netflix_ui/widgets/hd_container.dart';
import 'package:netflix_ui/widgets/middle_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: PreferredSize(
            preferredSize: Size(double.infinity, 40), child: GlobalAppBar()),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Rick and Morty',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w600),
                  ),
                  const Gap(3),
                  Row(
                    children: [
                      Text(
                        '2022',
                        style: TextStyle(fontSize: 11, color: Colors.grey[600]),
                      ),
                      const GradeContainer(),
                      Text(
                        '6 Seasons',
                        style: TextStyle(fontSize: 11, color: Colors.grey[600]),
                      ),
                      const HDContainer(),
                      Icon(
                        Icons.chat_outlined,
                        color: Colors.white.withOpacity(0.5),
                        size: 20,
                      )
                    ],
                  ),
                  const Gap(15),
                  const Text(
                    'New episode coming on Monday',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                  const Gap(8),
                  AppBtn(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const VideoScreen(),
                            ));
                      },
                      text: 'Play',
                      suffixIcon: const Icon(
                        Icons.play_arrow,
                        color: Colors.black,
                        size: 27,
                      )),
                  const Gap(8),
                  AppBtn(
                      onTap: () {},
                      text: 'Download S6:E1',
                      btnColor: AppColors.DARK_GREY,
                      textColor: Colors.white,
                      suffixIcon: const Icon(
                        Icons.download,
                        color: Colors.white,
                        size: 25,
                      )),
                  const Gap(12),
                  const Text(
                    'S6:E1 \"Solaricks\"',
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                  const Gap(10),
                  const Text(
                    AppStrings.S6E1_TEXT,
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                  const Gap(8),
                  ExpandableText(
                    prefixText: 'Starring:',
                    prefixStyle:
                        TextStyle(fontSize: 12, color: Colors.grey[400]),
                    AppStrings.STARRING_TEXT,
                    style: TextStyle(fontSize: 12, color: Colors.grey[500]),
                    expandText: 'more   ',
                    collapseText: 'less',
                    maxLines: 1,
                    linkColor: Colors.white,
                  ),
                  const Gap(5),
                  RichText(
                      text: TextSpan(
                          text: 'Creators:',
                          style:
                              TextStyle(fontSize: 16, color: Colors.grey[400]),
                          children: [
                        TextSpan(
                          text: ' Dan Harmon, Justin Roiland',
                          style:
                              TextStyle(fontSize: 15, color: Colors.grey[500]),
                        )
                      ])),
                  const MiddleContainer(),
                  Stack(
                    children: [
                      Divider(
                        color: Colors.grey[700],
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Gap(8),
                          TabBar(
                              labelColor: Colors.white,
                              dividerColor: Colors.black,
                              indicator: BoxDecoration(
                                  border: Border(
                                      top: BorderSide(
                                          color: AppColors.RED, width: 3))),
                              isScrollable: true,
                              labelPadding:
                                  EdgeInsets.symmetric(horizontal: 15),
                              tabAlignment: TabAlignment.start,
                              tabs: [
                                Tab(
                                  child: Text(
                                    'Episodes',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                                Tab(
                                  child: Text(
                                    'More Like This',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                              ]),
                          SizedBox(
                              height: 365,
                              child: TabBarView(children: [
                                EpisodesTabBarView(),
                                MoreLikeTabBarView(),
                              ]))
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
