import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './course_controller.dart';

class CoursePage extends GetView<CourseController> {
    
    const CoursePage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: const Text('CoursePage'),),
            body: Container(),
        );
    }
}