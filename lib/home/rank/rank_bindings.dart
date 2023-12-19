import 'package:get/get.dart';
import './rank_controller.dart';

class RankBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(RankController());
    }
}