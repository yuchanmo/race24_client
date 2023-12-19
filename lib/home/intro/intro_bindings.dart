import 'package:get/get.dart';
import './intro_controller.dart';

class IntroBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(IntroController());
    }
}