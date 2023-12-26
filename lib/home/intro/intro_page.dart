import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:race24_client/home/model/course_info.dart';
import 'package:race24_client/home/widgets/home_app_bar.dart';
import 'package:race24_client/routes/app_routes.dart';
import 'package:velocity_x/velocity_x.dart';
import './intro_controller.dart';

class IntroPage extends StatelessWidget {
  final IntroController _vm = Get.find();

  IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: <Widget>[
        SliverAppBar(
          expandedHeight: 200.0,
          flexibleSpace: FlexibleSpaceBar(
            title: const Text(
              'Race 24h7d',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 168, 77, 254),
              ),
            ),
            background: Container(
              decoration: const BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadiusDirectional.all(Radius.circular(3)),
              ),
              child: InkWell(
                onTap: () => Get.toNamed(AppPages.ABOUT),
                child: Image.asset(
                  'assets/images/firefly_orienteering.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          pinned: true,
          // Add more customization as needed
          // You can add actions, leading, etc.
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 330,
            child: SilverListWidget(), // SilverList를 포함한 위젯
          ),
        ),
        SliverToBoxAdapter(
          child: CardScrollWidget(), // 스크롤되는 Card 위젯
        ),
        const SliverToBoxAdapter(
          child: ListItemColumnWidget(), // Column 방향으로 스크롤되는 ListItem 위젯
        ),
      ]),
    );
  }
}

class SilverListWidget extends StatelessWidget {
  const SilverListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3, // 예시로 10개의 아이템
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('Item $index'),
          // 리스트 아이템 설정 등
        );
      },
    );
  }
}

class CardScrollWidget extends StatelessWidget {
  final IntroController _vm = Get.find();
  CardScrollWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Obx(
        () => Row(
          children: _vm.courseInfoList
              .map((element) => CourseCard(course: element))
              .toList(),
        ),
      ),
    );
  }
}

class CourseCard extends StatelessWidget {
  final CourseInfo course;
  const CourseCard({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(137, 113, 111, 111),
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 150,
            width: 120,
            child: Image.asset(course.courseBannerUrl),
          ),
          Text(
            course.courseName,
            style: const TextStyle(
              fontWeight: FontWeight.w100,
              color: Colors.white,
              fontSize: 13,
            ),
          )
        ],
      ),
    ).marginAll(10);
  }
}

class ListItemColumnWidget extends StatelessWidget {
  const ListItemColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 15, // 예시로 15개의 아이템
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('Item $index'),
          // 리스트 아이템 설정 등
        );
      },
    );
  }
}
