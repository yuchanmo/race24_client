import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:race24_client/home/widgets/w_home_app_bar.dart';
import './intro_controller.dart';

class IntroPage extends GetView<IntroController> {
  final IntroController _vm = Get.find();

  IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: [
              const WHomeAppBar(),
              Obx(() => Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: _vm.companyInfoList
                        .map(
                          (element) => Text(element.description),
                        )
                        .toList(),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
