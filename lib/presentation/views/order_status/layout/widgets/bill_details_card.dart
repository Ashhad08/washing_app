import 'package:flutter/material.dart';

import '../../../../../configurations/front_end.dart';
import '../../../../elements/custom_text.dart';

class BillDetailsCard extends StatelessWidget {
  const BillDetailsCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 222,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
      decoration:
          const BoxDecoration(gradient: FrontEndConfigs.kLinearGradient),
      child: Column(
        children: [
          const CustomText(
              text: 'Total Bill',
              fontSize: 23,
              textColor: FrontEndConfigs.kWhiteColor,
              fontWeight: FontWeight.w500),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              CustomText(
                  text: 'Sub Total',
                  fontSize: 20,
                  textColor: FrontEndConfigs.kWhiteColor,
                  fontWeight: FontWeight.w500),
              CustomText(
                text: '\$70.00',
                fontSize: 20,
                fontWeight: FontWeight.w500,
                textColor: FrontEndConfigs.kWhiteColor,
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              CustomText(
                  text: 'Total',
                  fontSize: 20,
                  textColor: FrontEndConfigs.kWhiteColor,
                  fontWeight: FontWeight.w500),
              CustomText(
                text: '\$70.00',
                fontSize: 20,
                fontWeight: FontWeight.w500,
                textColor: FrontEndConfigs.kWhiteColor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
