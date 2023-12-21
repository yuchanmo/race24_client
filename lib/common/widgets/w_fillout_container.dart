import 'package:flutter/material.dart';

class EmptyExpanded extends StatelessWidget {
  final int flex;
  const EmptyExpanded({Key? key, this.flex = 1}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Container(),
    );
  }
}

class WidthContainer extends StatelessWidget {
  final double width;
  const WidthContainer({super.key, this.width = 0});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
    );
  }
}

class HeightContainer extends StatelessWidget {
  final double height;

  const HeightContainer({super.key, this.height = 0});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}
