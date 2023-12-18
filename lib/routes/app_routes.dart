import 'package:get/get.dart';
import 'package:race24_client/login/login_bindings.dart';
import 'package:race24_client/login/login_view.dart';
import 'package:race24_client/total/total_view.dart';

part 'app_pages.dart';

class AppRoutes {
  static final pages = [
    GetPage(name: AppPages.HOME, page: () => TotalScreen()),
    GetPage(
      name: AppPages.LOGIN,
      page: () => LoginScreen(),
      binding: LoginBinding(),
    ),
  ];
}
