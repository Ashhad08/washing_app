import 'package:flutter/material.dart';

import 'layout/body.dart';

class GettingStartedView extends StatelessWidget {
  const GettingStartedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: GettingStartedViewBody(),
    );
  }
}
