import 'package:flutter/material.dart';
import 'package:washing_app/configurations/front_end.dart';
import 'package:washing_app/presentation/elements/custom_text.dart';

class CustomChoiceChip extends StatefulWidget {
  const CustomChoiceChip({Key? key, required this.weekNumber})
      : super(key: key);
  final String weekNumber;

  @override
  State<CustomChoiceChip> createState() => _CustomChoiceChipState();
}

class _CustomChoiceChipState extends State<CustomChoiceChip> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 86,
      child: ChoiceChip(
        elevation: 5,
        selectedColor: FrontEndConfigs.kPrimaryColor,
        backgroundColor: const Color(0xffE8E1E1),
        label: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Center(
            child: CustomText(
              text: widget.weekNumber,
              fontSize: 15,
              fontWeight: FontWeight.w500,
              textColor: isSelected == true
                  ? FrontEndConfigs.kWhiteColor
                  : FrontEndConfigs.kPrimaryColor,
            ),
          ),
        ),
        selected: isSelected,
        onSelected: (val) {
          setState(() {
            isSelected = val;
          });
        },
      ),
    );
  }
}
