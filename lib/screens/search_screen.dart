import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticketbookingapp/widgets/icon_text_widget.dart';
import 'package:ticketbookingapp/utils/app_layout.dart';
import 'package:ticketbookingapp/utils/app_styles.dart';

import '../Widgets/double_text_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(20),
          vertical: AppLayout.getHeight(20),
        ),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text(
            "What are you looking for?",
            style: Styles.headLineStyle1.copyWith(
              fontSize: AppLayout.getWidth(35),
            ),
          ),
          Gap(AppLayout.getHeight(20)),
          FittedBox(
            fit: BoxFit.contain,
            child: Row(
              children: [
                /*
                airline tickets
                */
                Container(
                  width: size.width * 0.44,
                  padding: EdgeInsets.symmetric(
                    vertical: AppLayout.getHeight(7),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(AppLayout.getHeight(50)),
                    ),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Text(
                      "Airline Tickets",
                      style: Styles.textStyle, // Add the text style here
                    ),
                  ),
                ),

                /*
                hotels
                */
                Container(
                  width: size.width * 0.44,
                  padding: EdgeInsets.symmetric(
                    vertical: AppLayout.getHeight(7),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(AppLayout.getHeight(50)),
                    ),
                    color: Colors.transparent,
                  ),
                  child: Center(
                    child: Text(
                      "Hotels",
                      style: Styles.textStyle, // Add the text style here
                    ),
                  ),
                ),
              ],
            ),
          ),
          Gap(AppLayout.getHeight(25)),
          const AppIconText(
              icons: Icons.flight_takeoff_rounded, text: "Departure"),
          Gap(AppLayout.getHeight(20)),
          const AppIconText(icons: Icons.flight_land_rounded, text: "Arrival"),
          Gap(AppLayout.getHeight(25)),
          Container(
            padding: EdgeInsets.symmetric(
                vertical: AppLayout.getWidth(18),
                horizontal: AppLayout.getWidth(15)),
            decoration: BoxDecoration(
              color: const Color(0xD91130CE),
              borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
            ),
            child: Center(
              child: Text(
                'Find tickets',
                style: Styles.textStyle.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Gap(AppLayout.getHeight(40)),
          const AppDoubleTextWidget(
              bigText: "Upcoming flights", smallText: "View all")
        ],
      ),
    );
  }
}
