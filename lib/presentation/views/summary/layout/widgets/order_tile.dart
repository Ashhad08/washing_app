import 'package:flutter/material.dart';

import '../../../../../configurations/front_end.dart';
import '../../../../elements/custom_text.dart';

class OrderTile extends StatelessWidget {
  const OrderTile({
    Key? key,
    required this.title,
    required this.subTitle,
  }) : super(key: key);
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 30, top: 19, bottom: 23),
          margin: const EdgeInsets.symmetric(horizontal: 5),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: const Color(0xffEEEEEE),
              borderRadius: BorderRadius.circular(37),
              boxShadow: [
                FrontEndConfigs.kInnerShadow,
                FrontEndConfigs.kDropShadow
              ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                  text: title,
                  fontSize: 17,
                  textColor: FrontEndConfigs.kPrimaryColor,
                  fontWeight: FontWeight.w600),
              const SizedBox(
                height: 5,
              ),
              CustomText(
                  text: subTitle,
                  fontSize: 15,
                  textColor: FrontEndConfigs.kSubTextColor,
                  fontWeight: FontWeight.w600)
            ],
          ),
        ),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
