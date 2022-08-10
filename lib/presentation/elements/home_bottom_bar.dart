import 'package:flutter/material.dart';

import '../../configurations/front_end.dart';

class HomeBottomBar extends StatelessWidget {
  const HomeBottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      margin: const EdgeInsets.only(bottom: 22, left: 46, right: 46),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            FrontEndConfigs.kInnerShadow,
            FrontEndConfigs.kDropShadow
          ],
          color: FrontEndConfigs.kWhiteColor),
      child: CircleAvatar(
        backgroundColor: FrontEndConfigs.kPrimaryColor,
        child: Image.asset(
          'assets/icons/home.png',
          height: 30,
          width: 27,
        ),
      ),
    );
  }
}
