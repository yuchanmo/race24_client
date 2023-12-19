import 'package:get/get.dart';

class TestController extends GetxController {
  RxInt count = 0.obs;
  RxList<String> names = <String>[].obs;

  void increase() {
    count(count.value + 1);
  }
}
