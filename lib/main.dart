import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:race24_client/routes/app_routes.dart';
import 'package:race24_client/theme_controller.dart';

void main() {
  runApp(RaceClient());
}

class RaceClient extends StatelessWidget {
  RaceClient({super.key});

  final themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RACE 24',
      theme: ThemeData.dark(),
      initialRoute: AppPages.LOGIN,
      getPages: AppRoutes.pages,
    );
  }
}
