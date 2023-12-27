import 'package:get/get.dart';
import './course_controller.dart';

class CourseBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(CourseController());
    }
}