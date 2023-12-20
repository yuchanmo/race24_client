import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:race24_client/home/activity/activity_page.dart';
import 'package:race24_client/home/intro/intro_page.dart';
import 'package:race24_client/home/model/page_info.dart';
import 'package:race24_client/home/mypage/mypage_page.dart';
import 'package:race24_client/home/play/play_page.dart';
import 'package:race24_client/home/rank/rank_page.dart';

List<PageInfo> homePageList = <PageInfo>[
  PageInfo(
      pageName: "intro", widget: IntroPage(), icon: const Icon(Icons.home)),
  PageInfo(
      pageName: "activity",
      widget: const ActivityPage(),
      icon: const Icon(Icons.local_activity)),
  PageInfo(
      pageName: "play",
      widget: const PlayPage(),
      icon: const Icon(Icons.play_circle)),
  PageInfo(
      pageName: "rank", widget: const RankPage(), icon: const Icon(Icons.star)),
  PageInfo(
      pageName: "mypage",
      widget: const MypagePage(),
      icon: const Icon(Icons.face)),
];

class HomeController extends GetxController {
  RxInt index = 0.obs;
  RxList<Widget> pages =
      RxList<Widget>.from(homePageList.map((p) => p.widget).toList());

  Widget get currentPage => pages[index.value];

  void setIndex(int selectedIndex) {
    index(selectedIndex);
  }
}
