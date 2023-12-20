import 'package:get/get.dart';
import 'package:race24_client/home/home_bindings.dart';
import 'package:race24_client/home/home_page.dart';
import 'package:race24_client/home/intro/intro_bindings.dart';
import 'package:race24_client/home/intro/intro_page.dart';
import 'package:race24_client/login/login_bindings.dart';
import 'package:race24_client/login/login_view.dart';
import 'package:race24_client/test/test_bindings.dart';
import 'package:race24_client/test/test_page.dart';

part 'app_pages.dart';

class AppRoutes {
  static final pages = [
    GetPage(
      name: AppPages.HOME,
      page: () => HomePage(),
      binding: HomeCompositeBindings(),
    ),
    GetPage(
      name: AppPages.LOGIN,
      page: () => const LoginScreen(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: AppPages.TEST,
      page: () => TestPage(),
      binding: TestBindings(),
    ),
  ];
}
