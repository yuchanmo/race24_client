import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './play_controller.dart';

class PlayPage extends GetView<PlayController> {
    
    const PlayPage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: const Text('PlayPage'),),
            body: Container(),
        );
    }
}