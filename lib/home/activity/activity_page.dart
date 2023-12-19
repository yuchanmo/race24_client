import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './activity_controller.dart';

class ActivityPage extends GetView<ActivityController> {
    
    const ActivityPage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: const Text('ActivityPage'),),
            body: Container(),
        );
    }
}