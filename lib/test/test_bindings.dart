import 'package:get/get.dart';
import './test_controller.dart';

class TestBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TestController>(() => TestController());
  }
}
