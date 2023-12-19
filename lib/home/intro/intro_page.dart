import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './intro_controller.dart';

class IntroPage extends GetView<IntroController> {
    
    const IntroPage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: const Text('IntroPage'),),
            body: Container(),
        );
    }
}