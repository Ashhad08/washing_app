import 'package:flutter/material.dart';

import '../../../../../configurations/front_end.dart';
import '../../../../elements/custom_text.dart';

class OrderDetailsCard extends StatelessWidget {
  const OrderDetailsCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
      decoration: BoxDecoration(
          boxShadow: [
            FrontEndConfigs.kInnerShadow,
            FrontEndConfigs.kDropShadow
          ],
          color: FrontEndConfigs.kWhiteColor,
          borderRadius:
              const BorderRadius.vertical(top: const Radius.circular(60))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                'assets/images/user_profile.png',
                height: 64,
                width: 64,
              ),
              const Spacer(),
              const CustomText(
                text: 'Customer Name',
                fontSize: 20,
                fontWeight: FontWeight.w600,
                textColor: FrontEndConfigs.kPrimaryColor,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const CustomText(
              text: 'Washing and Pressing',
              fontSize: 18,
              fontWeight: FontWeight.w500),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              CustomText(
                  text: 'Date & Time',
                  fontSize: 18,
                  textColor: FrontEndConfigs.kPrimaryColor,
                  fontWeight: FontWeight.w500),
              CustomText(
                  text: '9:00 pm',
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  textColor: FrontEndConfigs.kPrimaryColor),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              CustomText(
                  text: 'Pickup',
                  fontSize: 18,
                  textColor: FrontEndConfigs.kPrimaryColor,
                  fontWeight: FontWeight.w500),
              CustomText(
                  text: '9:00 pm',
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  textColor: FrontEndConfigs.kPrimaryColor),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              CustomText(
                  text: 'Delivery',
                  fontSize: 18,
                  textColor: FrontEndConfigs.kPrimaryColor,
                  fontWeight: FontWeight.w500),
              CustomText(
                  text: '9:00 pm',
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  textColor: FrontEndConfigs.kPrimaryColor),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              CustomText(
                  text: 'Address',
                  fontSize: 18,
                  textColor: FrontEndConfigs.kPrimaryColor,
                  fontWeight: FontWeight.w500),
              CustomText(
                  text: '9:00 pm',
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  textColor: FrontEndConfigs.kPrimaryColor),
            ],
          ),
        ],
      ),
    );
  }
}
