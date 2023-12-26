import 'package:get/get.dart';
import 'package:race24_client/home/model/company_info.dart';
import 'package:race24_client/home/model/course_info.dart';
import 'package:race24_client/home/repository/company_repository.dart';
import 'package:race24_client/home/repository/course_repository.dart';

class IntroController extends GetxController {
  final CompanyRepository companyRepo;
  final RxList<CompanyInfo> companyInfoList = <CompanyInfo>[].obs;
  final CourseRepository courseRepo;
  final RxList<CourseInfo> courseInfoList = <CourseInfo>[].obs;

  IntroController({required this.companyRepo, required this.courseRepo}) {
    setCompanyInfoList();
    setCourseInfoList();
  }

  void setCompanyInfoList() async {
    var res = await companyRepo.getCompanyInfo();
    companyInfoList.addAll(res);
  }

  void setCourseInfoList() async {
    var res = await courseRepo.getCourseList();
    courseInfoList.addAll(res);
  }
}
