import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './intro_controller.dart';

class IntroPage extends GetView<IntroController> {
  final IntroController _vm = Get.find();

  IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IntroPage'),
      ),
      body: Container(
        child: Obx(() => Column(
              children: _vm.companyInfoList
                  .map(
                    (element) => Text(element.description),
                  )
                  .toList(),
            )),
      ),
    );
  }
}
