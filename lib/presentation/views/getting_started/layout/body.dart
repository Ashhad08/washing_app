import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:washing_app/configurations/front_end.dart';
import 'package:washing_app/presentation/elements/custom_text.dart';
import 'package:washing_app/presentation/views/location/location_view.dart';

class GettingStartedViewBody extends StatelessWidget {
  const GettingStartedViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FrontEndConfigs.kWhiteColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/app_logo.png'),
            const SizedBox(
              height: 20,
            ),
            const CustomText(
                text:
                    'Get ready to make your life easy with single click of app. Which makes laundry things handle better.',
                fontSize: 15,
                fontWeight: FontWeight.w600),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 60,
              width: 280,
              decoration: BoxDecoration(
                  gradient: FrontEndConfigs.kLinearGradient,
                  borderRadius: BorderRadius.circular(43)),
              child: FlatButton(
                onPressed: () {
                  Get.to(const LocationView());
                },
                child: const CustomText(
                    text: 'Get Started',
                    fontSize: 25,
                    textColor: FrontEndConfigs.kWhiteColor,
                    fontWeight: FontWeight.w600),
              ),
            )
          ],
        ),
      ),
    );
  }
}
