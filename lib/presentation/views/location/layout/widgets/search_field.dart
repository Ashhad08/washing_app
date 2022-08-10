import 'package:flutter/material.dart';

import '../../../../../configurations/front_end.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 33,
        child: TextField(
          style: const TextStyle(
              fontFamily: "Poppins",
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: FrontEndConfigs.kBlackColor),
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 5),
            prefixIcon: const Icon(
              Icons.search_rounded,
              size: 20,
              color: FrontEndConfigs.kPrimaryColor,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide:
                  const BorderSide(color: FrontEndConfigs.kPrimaryColor),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide:
                  const BorderSide(color: FrontEndConfigs.kPrimaryColor),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide:
                  const BorderSide(color: FrontEndConfigs.kPrimaryColor),
            ),
          ),
        ));
  }
}
