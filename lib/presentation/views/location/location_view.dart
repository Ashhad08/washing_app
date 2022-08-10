import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:washing_app/configurations/front_end.dart';

import '../../elements/home_bottom_bar.dart';
import 'layout/body.dart';

class LocationView extends StatelessWidget {
  const LocationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: HomeBottomBar(),
      body: LocationViewBody(),
    );
  }
}
