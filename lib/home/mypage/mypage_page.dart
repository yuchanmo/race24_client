import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './mypage_controller.dart';

class MypagePage extends GetView<MypageController> {
    
    const MypagePage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: const Text('MypagePage'),),
            body: Container(),
        );
    }
}