import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:race24_client/common/extensions/buildcontext_extensions.dart';
import 'package:race24_client/common/widgets/fillout_container.dart';

class WrapContainer extends StatelessWidget {
  final Widget widget;
  final VoidCallback? actionToClickHeader;
  final String containerTitle;

  const WrapContainer({
    Key? key,
    required this.containerTitle,
    required this.widget,
    this.actionToClickHeader,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.wrapContainerColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Container(
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  containerTitle,
                ),
                const EmptyExpanded(),
                InkWell(
                    onTap: actionToClickHeader,
                    child: const Icon(Icons.arrow_circle_right_rounded)),
              ],
            ),
            widget,
          ],
        ),
      ).paddingAll(5),
    ).paddingAll(10);
  }
}
