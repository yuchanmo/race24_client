import 'package:get/get.dart';
import 'package:race24_client/about/about_bindings.dart';
import 'package:race24_client/about/about_page.dart';
import 'package:race24_client/common/widgets/constraint_container.dart';
import 'package:race24_client/home/home_bindings.dart';
import 'package:race24_client/home/home_page.dart';
import 'package:race24_client/login/login_bindings.dart';
import 'package:race24_client/login/login_view.dart';

part 'app_pages.dart';

class AppRoutes {
  static final pages = [
    GetPage(
      name: AppPages.HOME,
      page: () => ConstraintContainer(
        widget: HomePage(),
      ),
      binding: HomeCompositeBindings(),
    ),
    GetPage(
      name: AppPages.LOGIN,
      page: () => const ConstraintContainer(
        widget: LoginScreen(),
      ),
      binding: LoginBinding(),
    ),
    GetPage(
      name: AppPages.ABOUT,
      page: () => const ConstraintContainer(
        widget: AboutPage(),
      ),
      binding: AboutBindings(),
    ),
  ];
}
