import 'package:race24_client/home/model/course_info.dart';

abstract class CourseRepository {
  Future<CourseInfo> getCourseDetail(int courseId);
  Future<List<CourseInfo>> getCourseList();
}

List<CourseInfo> dummy = <CourseInfo>[
  CourseInfo(
    applyEvent: false,
    courseId: 1,
    price: 10000,
    courseName: "창원수목원 코스",
    courseBannerUrl: "assets/images/banner_course1.jpg",
    courseDescription:
        "이곳의 코스 소개입니다. 부산 내 치유의 솔나무길로 솔나무의 아름다움과 부산의 역사와 문화를 느끼게 하는 곳으로 심신의 회복과 면역력을 강화시키는 건강하고 아름다운 공간입니다.",
    courseStartDate: DateTime(
      2023,
      1,
      1,
    ),
    couresEndDate: DateTime(
      2023,
      12,
      31,
    ),
  ),
  CourseInfo(
    applyEvent: false,
    courseId: 1,
    price: 10000,
    courseName: "창원수목원 코스",
    courseBannerUrl: "assets/images/banner_course1.jpg",
    courseDescription:
        "이곳의 코스 소개입니다. 부산 내 치유의 솔나무길로 솔나무의 아름다움과 부산의 역사와 문화를 느끼게 하는 곳으로 심신의 회복과 면역력을 강화시키는 건강하고 아름다운 공간입니다.",
    courseStartDate: DateTime(
      2023,
      1,
      1,
    ),
    couresEndDate: DateTime(
      2023,
      12,
      31,
    ),
  ),
  CourseInfo(
    applyEvent: false,
    courseId: 1,
    price: 10000,
    courseName: "창원수목원 코스",
    courseBannerUrl: "assets/images/banner_course1.jpg",
    courseDescription:
        "이곳의 코스 소개입니다. 부산 내 치유의 솔나무길로 솔나무의 아름다움과 부산의 역사와 문화를 느끼게 하는 곳으로 심신의 회복과 면역력을 강화시키는 건강하고 아름다운 공간입니다.",
    courseStartDate: DateTime(
      2023,
      1,
      1,
    ),
    couresEndDate: DateTime(
      2023,
      12,
      31,
    ),
  ),
  CourseInfo(
    applyEvent: false,
    courseId: 1,
    price: 10000,
    courseName: "창원수목원 코스",
    courseBannerUrl: "assets/images/banner_course1.jpg",
    courseDescription:
        "이곳의 코스 소개입니다. 부산 내 치유의 솔나무길로 솔나무의 아름다움과 부산의 역사와 문화를 느끼게 하는 곳으로 심신의 회복과 면역력을 강화시키는 건강하고 아름다운 공간입니다.",
    courseStartDate: DateTime(
      2023,
      1,
      1,
    ),
    couresEndDate: DateTime(
      2023,
      12,
      31,
    ),
  ),
  CourseInfo(
    applyEvent: false,
    courseId: 1,
    price: 10000,
    courseName: "창원수목원 코스",
    courseBannerUrl: "assets/images/banner_course1.jpg",
    courseDescription:
        "이곳의 코스 소개입니다. 부산 내 치유의 솔나무길로 솔나무의 아름다움과 부산의 역사와 문화를 느끼게 하는 곳으로 심신의 회복과 면역력을 강화시키는 건강하고 아름다운 공간입니다.",
    courseStartDate: DateTime(
      2023,
      1,
      1,
    ),
    couresEndDate: DateTime(
      2023,
      12,
      31,
    ),
  ),
  CourseInfo(
    applyEvent: false,
    courseId: 1,
    price: 10000,
    courseName: "창원수목원 코스",
    courseBannerUrl: "assets/images/banner_course1.jpg",
    courseDescription:
        "이곳의 코스 소개입니다. 부산 내 치유의 솔나무길로 솔나무의 아름다움과 부산의 역사와 문화를 느끼게 하는 곳으로 심신의 회복과 면역력을 강화시키는 건강하고 아름다운 공간입니다.",
    courseStartDate: DateTime(
      2023,
      1,
      1,
    ),
    couresEndDate: DateTime(
      2023,
      12,
      31,
    ),
  ),
  CourseInfo(
    applyEvent: false,
    courseId: 1,
    price: 10000,
    courseName: "창원수목원 코스",
    courseBannerUrl: "assets/images/banner_course1.jpg",
    courseDescription:
        "이곳의 코스 소개입니다. 부산 내 치유의 솔나무길로 솔나무의 아름다움과 부산의 역사와 문화를 느끼게 하는 곳으로 심신의 회복과 면역력을 강화시키는 건강하고 아름다운 공간입니다.",
    courseStartDate: DateTime(
      2023,
      1,
      1,
    ),
    couresEndDate: DateTime(
      2023,
      12,
      31,
    ),
  ),
  CourseInfo(
    applyEvent: false,
    courseId: 1,
    price: 10000,
    courseName: "창원수목원 코스",
    courseBannerUrl: "assets/images/banner_course1.jpg",
    courseDescription:
        "이곳의 코스 소개입니다. 부산 내 치유의 솔나무길로 솔나무의 아름다움과 부산의 역사와 문화를 느끼게 하는 곳으로 심신의 회복과 면역력을 강화시키는 건강하고 아름다운 공간입니다.",
    courseStartDate: DateTime(
      2023,
      1,
      1,
    ),
    couresEndDate: DateTime(
      2023,
      12,
      31,
    ),
  ),
  CourseInfo(
    applyEvent: false,
    courseId: 1,
    price: 10000,
    courseName: "창원수목원 코스",
    courseBannerUrl: "assets/images/banner_course1.jpg",
    courseDescription:
        "이곳의 코스 소개입니다. 부산 내 치유의 솔나무길로 솔나무의 아름다움과 부산의 역사와 문화를 느끼게 하는 곳으로 심신의 회복과 면역력을 강화시키는 건강하고 아름다운 공간입니다.",
    courseStartDate: DateTime(
      2023,
      1,
      1,
    ),
    couresEndDate: DateTime(
      2023,
      12,
      31,
    ),
  ),
];

class FakeCourseRepository extends CourseRepository {
  @override
  Future<CourseInfo> getCourseDetail(int courseId) async {
    // TODO: implement getCourseDetail
    Future.delayed(
      const Duration(microseconds: 1),
    );
    return dummy[courseId];
  }

  @override
  Future<List<CourseInfo>> getCourseList() async {
    // TODO: implement getCourseList
    Future.delayed(
      const Duration(microseconds: 1),
    );
    return dummy;
  }
}
