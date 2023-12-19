import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './home_controller.dart';

class HomePage extends GetView<HomeController> {
  final HomeController _vm = Get.find<HomeController>();
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      body: Obx(() => _vm.pages[_vm.index.value]),
      bottomNavigationBar: Obx(
        () => Container(
          decoration: BoxDecoration(
            color: Colors.blue[900], // 어두운 남색 배경
          ),
          child: BottomNavigationBar(
            selectedItemColor: Colors.red[800], // 짙은 남색 아이콘 색상
            unselectedItemColor: Colors.blue[200],
            currentIndex: _vm.index.value,
            onTap: _vm.setIndex,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Page 1'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: 'Page 2'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite), label: 'Page 3'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart), label: 'Page 4'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Page 5'),
            ],
          ),
        ),
      ),
    );
  }
}
