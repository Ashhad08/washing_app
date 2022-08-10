import 'package:flutter/material.dart';
import 'package:washing_app/configurations/front_end.dart';

import '../../../elements/app_bar_with_gradient_container.dart';

import 'widgets/bill_details_card.dart';
import 'widgets/order_details_card.dart';

class OrderStatusViewBody extends StatelessWidget {
  const OrderStatusViewBody({Key? key}) : super(key: key);

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
                title: 'Order Status',
                actionIcon: Icons.add,
                nextScreen: SizedBox(),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.83,
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      OrderDetailsCard(),
                      SizedBox(
                        height: 30,
                      ),
                      BillDetailsCard(),
                      SizedBox(
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
