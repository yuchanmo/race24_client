import 'package:get/get.dart';
import 'package:race24_client/home/model/company_info.dart';
import 'package:race24_client/home/repository/company_repository.dart';

class IntroController extends GetxController {
  final CompanyRepository repo;
  final RxList<CompanyInfo> companyInfoList = <CompanyInfo>[].obs;

  IntroController({required this.repo}) {
    setCompanyInfoList();
  }

  void setCompanyInfoList() async {
    var res = await repo.getCompanyInfo();
    companyInfoList.addAll(res);
  }
}
