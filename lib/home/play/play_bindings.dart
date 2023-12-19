import 'package:get/get.dart';
import './play_controller.dart';

class PlayBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(PlayController());
    }
}