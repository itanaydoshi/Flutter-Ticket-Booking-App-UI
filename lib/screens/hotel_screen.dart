import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticketbookingapp/utils/app_layout.dart';
import 'package:ticketbookingapp/utils/app_styles.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size = AppLayout.getSize(context);
    return Container(
      width: Size.width * 0.6,
      height: 350,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
          color: Styles.primaryColor,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 20,
              spreadRadius: 5,
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Styles.primaryColor,
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/one.png"),
              ),
            ),
          ),
          const Gap(10),
          Text("Open Space",
              style: Styles.headLineStyle3.copyWith(color: Styles.kakiColor)),
          const Gap(5),
          Text("London",
              style: Styles.headLineStyle3.copyWith(color: Colors.white)),
          const Gap(8),
          Text("40/night",
              style: Styles.headLineStyle4.copyWith(color: Colors.white)),
        ],
      ),
    );
  }
}