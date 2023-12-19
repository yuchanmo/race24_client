import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './rank_controller.dart';

class RankPage extends GetView<RankController> {
    
    const RankPage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: const Text('RankPage'),),
            body: Container(),
        );
    }
}