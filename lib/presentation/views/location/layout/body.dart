import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:washing_app/configurations/front_end.dart';
import 'package:washing_app/presentation/elements/custom_text.dart';
import 'package:washing_app/presentation/views/schedule/schedule_view.dart';

import '../../../elements/app_bar_with_gradient_container.dart';
import 'widgets/google_maps_container.dart';
import 'widgets/search_field.dart';

class LocationViewBody extends StatelessWidget {
  const LocationViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FrontEndConfigs.kWhiteColor,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            const Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: AppBarGradientContainer(
                title: 'Location',
                nextScreen: ScheduleView(),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.8,
                padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
                margin: const EdgeInsets.symmetric(horizontal: 16),
                decoration: const BoxDecoration(
                    color: FrontEndConfigs.kWhiteColor,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(60))),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomText(
                        text: 'Where do you want your items picked up?',
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        textColor: FrontEndConfigs.kPrimaryColor,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ListTile(
                        leading: Image.asset(
                          'assets/images/user_profile.png',
                          height: 50,
                          width: 50,
                        ),
                        title: Row(
                          children: const [
                            CustomText(
                              text: 'Customer Name',
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              textColor: FrontEndConfigs.kPrimaryColor,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const CustomText(
                        text: 'Address',
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        textColor: FrontEndConfigs.kPrimaryColor,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const SearchField(),
                      const SizedBox(
                        height: 30,
                      ),
                      const GoogleMapContainer(),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const CustomText(
                            text: 'Same for drop off',
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            textColor: FrontEndConfigs.kPrimaryColor,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          FlutterSwitch(
                              height: 25,
                              width: 65,
                              activeColor: FrontEndConfigs.kPrimaryColor,
                              value: true,
                              toggleSize: 20,
                              onToggle: (bool val) {})
                        ],
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
