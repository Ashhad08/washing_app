import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../configurations/front_end.dart';
import 'custom_text.dart';

class AppBarGradientContainer extends StatelessWidget {
  const AppBarGradientContainer({
    Key? key,
    required this.title,
    required this.nextScreen,
    this.actionIcon = Icons.arrow_forward_ios_outlined,
  }) : super(key: key);
  final String title;
  final Widget nextScreen;
  final IconData? actionIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      alignment: Alignment.topCenter,
      padding: const EdgeInsets.only(top: 50, right: 20, left: 20),
      decoration: const BoxDecoration(
          gradient: FrontEndConfigs.kLinearGradient,
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(56))),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              size: 30,
              color: FrontEndConfigs.kWhiteColor,
            ),
          ),
          const Spacer(),
          CustomText(
            text: title,
            fontSize: 23,
            fontWeight: FontWeight.w600,
            textColor: FrontEndConfigs.kWhiteColor,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              actionIcon == Icons.arrow_forward_ios_outlined
                  ? Get.to(nextScreen)
                  : null;
            },
            icon: Icon(
              actionIcon,
              size: 25,
              color: FrontEndConfigs.kWhiteColor,
            ),
          ),
        ],
      ),
    );
  }
}
