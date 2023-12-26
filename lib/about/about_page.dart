import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import './about_controller.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Race 24h7d'),
      ),
      body: Container(
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Headline,
            const HeightBox(50),
            CenterImage,
            const HeightBox(50),
            ProductInfomation,
          ]),
        ),
      ).paddingAll(10),
    );
  }

  Widget get Headline {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "인생에 꼭\n필요한 기술",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "지도와 나침반을 이용할 줄 아는 것은\n생존 수영을 배우는 것과 같은 것입니다.",
          style: TextStyle(
            fontSize: 15,
          ),
        )
      ],
    );
  }

  Widget get CenterImage => Image.asset("assets/images/compass.jpg");

  Widget get ProductInfomation {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: Colors.black26,
        borderRadius: BorderRadiusDirectional.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          "스스로 지도를 이해하고 길을 찾는 방법을 배우게 될 것입니다.\n지도 한 장 이지만 지도를 이해하기에는 다양한 교과목이 필요합니다.\n왜 나침반은 북쪽을 기준으로 하는지 지도에서는 1cm인데 실제 지형에서는 몇백 미터를 나타내는지 과거에는\n지도와 나침반으로 신대륙을 발견한 것과 같은 내용을 과학, 수학, 지리 융합해서 교과과정과 연계하여 여행지에서 직접 경험\n하게 만들고 오래도록 기억하게 만들고자 합니다."
              .text
              .size(13)
              .make(),
          const HeightBox(20),
          "Race 247은 여행을 좋아하고 경쟁을 즐기는 분들을 위한 체험 프로그램이 될 것입니다.\n아이, 어른, 노인까지 다양한 연령층이 기본적인 지도 지식만 있다면 쉽게 접할 수 있는\n놀이 형식으로 접근하여 만들었습니다.\n여행지에서 가볍게 체험활동 이지만 예약이 필요없는 상품\n의미 있는 여가 여행시간을 경험하세요."
              .text
              .size(13)
              .make(),
          const HeightBox(20),
          "Race 247은 놀이의 본질에서 찾는 새로운 경험, 흥미진진한 챌린지와\n경쟁을 즐길 수 있는 아웃도어 체험 관광 프로그램입니다."
              .text
              .size(10)
              .color(Colors.blue[100])
              .make(),
        ],
      ),
    );
  }
}
