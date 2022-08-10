import 'package:flutter/material.dart';
import 'package:washing_app/configurations/front_end.dart';
import 'package:washing_app/presentation/elements/custom_text.dart';
import 'package:washing_app/presentation/views/order_status/order_status_view.dart';

import '../../../elements/app_bar_with_gradient_container.dart';
import '../summary_view.dart';
import 'widgets/order_tile.dart';

class SummaryViewBody extends StatelessWidget {
  const SummaryViewBody({Key? key}) : super(key: key);

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
                title: 'Summary',
                nextScreen: OrderStatusView(),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.83,
                padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                decoration: const BoxDecoration(
                    color: FrontEndConfigs.kWhiteColor,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(60))),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: const [
                      CustomText(
                          text: 'Tap Below to edit the details',
                          fontSize: 19,
                          textColor: FrontEndConfigs.kPrimaryColor,
                          fontWeight: FontWeight.w600),
                      SizedBox(
                        height: 20,
                      ),
                      OrderTile(
                        title: 'Order Details',
                        subTitle: 'Dry Clean',
                      ),
                      OrderTile(
                        title: 'Pick up Location',
                        subTitle: 'New street 123 Near City',
                      ),
                      OrderTile(
                        title: 'Pick up Time',
                        subTitle: '8:00 to 12:00 pm',
                      ),
                      OrderTile(
                        title: 'Drop off Location',
                        subTitle: 'New street 123 Near City ',
                      ),
                      OrderTile(
                        title: 'Drop off Time',
                        subTitle: '5:00 pm',
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
