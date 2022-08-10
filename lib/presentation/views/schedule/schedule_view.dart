import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:washing_app/presentation/elements/home_bottom_bar.dart';

import 'layout/body.dart';

class ScheduleView extends StatelessWidget {
  const ScheduleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      extendBody: true,
      bottomNavigationBar: HomeBottomBar(),
      body: ScheduleViewBody(),
    );
  }
}
