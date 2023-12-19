import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:race24_client/home/activity/activity_page.dart';
import 'package:race24_client/home/intro/intro_page.dart';
import 'package:race24_client/home/mypage/mypage_page.dart';
import 'package:race24_client/home/play/play_page.dart';
import 'package:race24_client/home/rank/rank_page.dart';

Map<String, Widget> homePages = {
  "intro": const IntroPage(),
  "activity": const ActivityPage(),
  "play": const PlayPage(),
  "rank": const RankPage(),
  "mypage": const MypagePage(),
};

class HomeController extends GetxController {
  RxInt index = 0.obs;
  RxList<Widget> pages = RxList<Widget>.from(homePages.values);

  Widget get currentPage => pages[index.value];

  void setIndex(int selectedIndex) {
    index(selectedIndex);
  }
}
