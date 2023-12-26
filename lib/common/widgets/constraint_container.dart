import 'package:flutter/material.dart';
import 'dart:io';

class ConstraintContainer extends StatelessWidget {
  final Widget widget;

  const ConstraintContainer({Key? key, required this.widget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 550) {
        return Center(
          child: Container(
            color: Colors.white, // 550px를 초과하는 영역은 하얀색으로 표시
            width: 550, // 최대 너비를 550px로 설정
            child: widget, // 여기에 여러분의 컨텐츠 위젯을 추가해주세요
          ),
        );
      } else {
        return widget; // 550px 이내의 화면에는 컨텐츠를 표시
      }
    });
  }
}
