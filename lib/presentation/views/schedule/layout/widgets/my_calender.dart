import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:washing_app/configurations/front_end.dart';

class MyCalender extends StatefulWidget {
  const MyCalender({
    Key? key,
  }) : super(key: key);

  @override
  State<MyCalender> createState() => _MyCalenderState();
}

class _MyCalenderState extends State<MyCalender> {
  DateTime _currentDate = DateTime.now();

  TextStyle calenderTextStyle = const TextStyle(
    fontFamily: 'Trebuchet MS',
    fontSize: 16,
    color: FrontEndConfigs.kPrimaryColor,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 330,
      padding: const EdgeInsets.symmetric(horizontal: 5),
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: FrontEndConfigs.kWhiteColor,
          borderRadius: BorderRadius.circular(32),
          border: Border.all(color: FrontEndConfigs.kPrimaryColor),
          boxShadow: [
            FrontEndConfigs.kInnerShadow,
            FrontEndConfigs.kDropShadow
          ]),
      child: CalendarCarousel(
        todayBorderColor: Colors.white,
        onDayPressed: (date, events) {
          setState(() => _currentDate = date);
        },
        selectedDayButtonColor: Colors.transparent,
        selectedDayBorderColor: FrontEndConfigs.kBlackColor,
        daysHaveCircularBorder: false,
        showOnlyCurrentMonthDate: false,
        headerTextStyle: calenderTextStyle.copyWith(fontSize: 21),
        headerMargin: const EdgeInsets.symmetric(vertical: 10),
        weekdayTextStyle:
            calenderTextStyle.copyWith(color: const Color(0xff1980E5)),
        weekendTextStyle: calenderTextStyle.copyWith(
            color: FrontEndConfigs.kBlackColor, fontSize: 14),
        thisMonthDayBorderColor: Colors.transparent,
        weekFormat: false,
        height: 420.0,
        selectedDateTime: _currentDate,
        todayButtonColor: FrontEndConfigs.kPrimaryColor,
        targetDateTime: _currentDate,
        customGridViewPhysics: const BouncingScrollPhysics(),
        showHeader: true,
        todayTextStyle:
            calenderTextStyle.copyWith(color: FrontEndConfigs.kBlackColor),
        selectedDayTextStyle: calenderTextStyle.copyWith(
            color: FrontEndConfigs.kBlackColor, fontSize: 14),
        inactiveDaysTextStyle: calenderTextStyle.copyWith(
            color: FrontEndConfigs.kBlackColor, fontSize: 14),
        daysTextStyle: calenderTextStyle.copyWith(
            color: FrontEndConfigs.kBlackColor, fontSize: 14),
        minSelectedDate: _currentDate.subtract(const Duration(days: 360)),
        maxSelectedDate: _currentDate.add(const Duration(days: 360)),
        prevDaysTextStyle: calenderTextStyle.copyWith(
            color: FrontEndConfigs.kSubTextColor, fontSize: 14),
        nextDaysTextStyle: calenderTextStyle.copyWith(
            color: FrontEndConfigs.kSubTextColor, fontSize: 14),
      ),
    );
  }
}
