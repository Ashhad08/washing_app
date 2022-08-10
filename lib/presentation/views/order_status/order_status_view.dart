import 'package:flutter/material.dart';
import 'package:washing_app/presentation/elements/home_bottom_bar.dart';

import 'layout/body.dart';

class OrderStatusView extends StatelessWidget {
  const OrderStatusView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      extendBody: true,
      bottomNavigationBar: HomeBottomBar(),
      body: OrderStatusViewBody(),
    );
  }
}
