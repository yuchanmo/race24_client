import 'package:flutter/material.dart';
import 'package:race24_client/common/widgets/fillout_container.dart';
import 'package:race24_client/styles/custom_colors.dart';

const width10 = WidthContainer(width: 10.0);

class WHomeAppBar extends StatelessWidget {
  const WHomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.appBarColor,
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          width10,
          Image.asset(
            'assets/images/race24.png',
            height: 60,
          ),
          width10,
          const Text(
            'RACE24',
            style: TextStyle(),
          ),
          const EmptyExpanded(),
          const Icon(Icons.alarm),
          width10,
        ],
      ),
    );
  }
}
