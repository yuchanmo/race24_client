import 'package:get/get.dart';
import 'package:race24_client/home/repository/company_repository.dart';
import './intro_controller.dart';

class IntroBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CompanyRepository>(() => FakeCompanyRepository());
    Get.lazyPut<IntroController>(() => IntroController(repo: Get.find()));
  }
}
