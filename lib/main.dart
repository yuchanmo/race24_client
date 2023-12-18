import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:race24_client/routes/app_routes.dart';

void main() {
  runApp(const RaceClient());
}

class RaceClient extends StatelessWidget {
  const RaceClient({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'RACE 24',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: AppPages.LOGIN,
      getPages: AppRoutes.pages,
    );
  }
}
