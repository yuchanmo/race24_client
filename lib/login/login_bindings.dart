import 'package:get/get.dart';
import 'package:race24_client/login/login_viewmodel.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<LoginViewModel>(() => LoginViewModel());
  }
}
