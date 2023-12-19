import 'package:get/get.dart';
import './mypage_controller.dart';

class MypageBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(MypageController());
    }
}