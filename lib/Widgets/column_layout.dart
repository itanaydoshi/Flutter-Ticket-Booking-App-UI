import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticketbookingapp/utils/app_styles.dart';

import '../utils/app_layout.dart';

class AppColumnLayout extends StatelessWidget {
  final CrossAxisAlignment alignment;
  final String firstText;
  final String secondText;
  final bool? isColor;
  const AppColumnLayout(
      {Key? key,
      required this.firstText,
      required this.secondText,
      required this.alignment,
      this.isColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      // style: isColor == null? Styles.headLineStyle3.copyWith(color: Colors.white): Styles.headLineStyle3
      children: [
        Text(firstText,
            style: isColor == null
                ? Styles.headLineStyle3.copyWith(color: Colors.black)
                : Styles.headLineStyle3.copyWith(color: Colors.black)),
        Gap(AppLayout.getHeight(14)),
        Text(secondText,
            style: isColor == null
                ? Styles.headLineStyle4.copyWith(color: Colors.black)
                : Styles.headLineStyle3),
      ],
    );
  }
}
