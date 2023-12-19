import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './test_controller.dart';

class TestPage extends GetView<TestController> {
  final TestController _vm = Get.find<TestController>();

  TestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TEST'),
      ),
      // Scaffold의 배경 그라데이션 설정
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blue,
              Colors.green,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp,
          ),
        ),
        // 내용을 추가할 수 있는 부분
        child: Center(
          child: Column(
            children: [
              Obx(() => Text(
                    '${_vm.count.value}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
              OutlinedButton(
                onPressed: () => _vm.increase(),
                child: const Text('카카오톡 로그인'),
              ),
              // GestureDetector(
              //   onTap: () => _vm.increase(),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
