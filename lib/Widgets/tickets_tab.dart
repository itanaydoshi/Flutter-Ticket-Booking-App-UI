import 'package:flutter/material.dart';
import '../utils/app_layout.dart';

class AppTicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketTabs(
      {Key? key, required this.firstTab, required this.secondTab})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      fit: BoxFit.contain,
      child: Row(
        children: [
          /*
          airline tickets
          */
          Container(
            width: size.width * 0.44,
            padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(AppLayout.getHeight(50)),
                ),
                color: Colors.white),
            child: Center(child: Text(firstTab)),
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
              child: Text(secondTab),
            ),
          ),
        ],
      ),
    );
  }
}
