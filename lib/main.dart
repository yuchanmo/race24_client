import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:race24_client/routes/app_routes.dart';
import 'package:race24_client/theme_controller.dart';
import 'package:after_layout/after_layout.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const RaceClient());
}

class RaceClient extends StatefulWidget {
  const RaceClient({super.key});

  @override
  State<RaceClient> createState() => _RaceClientState();
}

class _RaceClientState extends State<RaceClient> with AfterLayoutMixin {
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

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    // TODO: implement afterFirstLayout
    FlutterNativeSplash.remove();
  }
}
