import 'package:get/get.dart';
import 'package:race24_client/home/intro/intro_bindings.dart';
import './home_controller.dart';

class HomeBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}

class HomeCompositeBindings implements Bindings {
  final List<Bindings> bindingList = <Bindings>[
    HomeBindings(),
    IntroBindings()
  ];

  @override
  void dependencies() {
    // TODO: implement dependencies
    for (var b in bindingList) {
      b.dependencies();
    }
  }
}
