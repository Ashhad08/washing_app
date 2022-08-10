import 'package:flutter/material.dart';
import 'package:steps_indicator/steps_indicator.dart';

import '../../../../../configurations/front_end.dart';
import '../../../../elements/custom_text.dart';

class TimeLineRow extends StatelessWidget {
  const TimeLineRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: const [
        StepsIndicator(
            selectedStep: 0,
            nbSteps: 2,
            undoneLineColor: Color(0xff707070),
            lineLength: 100,
            unselectedStepSize: 20,
            selectedStepSize: 20,
            unselectedStepColorIn: FrontEndConfigs.kPrimaryColor,
            unselectedStepColorOut: FrontEndConfigs.kPrimaryColor,
            selectedStepColorOut: Color(0xff707070)),
        SizedBox(width: 20),
        CustomText(
          text: 'Recurring',
          fontSize: 15,
          fontWeight: FontWeight.w500,
          textColor: FrontEndConfigs.kPrimaryColor,
        ),
      ],
    );
  }
}
