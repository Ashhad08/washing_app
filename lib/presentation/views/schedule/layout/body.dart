import 'package:flutter/material.dart';
import 'package:washing_app/configurations/front_end.dart';
import 'package:washing_app/presentation/views/schedule/layout/widgets/custom_choice_chip.dart';

import 'package:washing_app/presentation/views/summary/summary_view.dart';

import '../../../elements/app_bar_with_gradient_container.dart';
import '../../../elements/custom_text.dart';
import 'widgets/my_calender.dart';
import 'widgets/time_line_row.dart';

class ScheduleViewBody extends StatelessWidget {
  const ScheduleViewBody({Key? key}) : super(key: key);

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
                title: 'Schedule',
                nextScreen: SummaryView(),
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
                    children: [
                      const CustomText(
                        text: 'Where do you want your items picked up?',
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        textColor: FrontEndConfigs.kPrimaryColor,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const TimeLineRow(),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          const CustomText(
                            text: 'Every',
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            textColor: FrontEndConfigs.kPrimaryColor,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.63,
                            child: Stack(
                              alignment: Alignment.center,
                              children: const [
                                Positioned(
                                    right: 0,
                                    child:
                                        CustomChoiceChip(weekNumber: 'Week 3')),
                                CustomChoiceChip(weekNumber: 'Week 2'),
                                Positioned(
                                    left: 0,
                                    child:
                                        CustomChoiceChip(weekNumber: 'Week 1')),
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      const MyCalender(),
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
