import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:howard_app/utils/app_layout.dart';
import 'package:howard_app/utils/app_styles.dart';


class PointsContainer extends StatelessWidget {
  final String day;
  final String points;
  const PointsContainer({Key? key,required this.day,required this.points}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppLayout.getHeight(100),
      width: AppLayout.getWidth(200),

      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
                color: Colors.black12,
                blurRadius: 1,
                spreadRadius: 2
            ),
          ]

      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Gap(AppLayout.getHeight(10)),
          Text(day, style: Styles.headerStyle2.copyWith(fontSize: AppLayout.getHeight(20)),),
          SvgPicture.asset("assets/images/medal.svg"),
          Text(points, style: Styles.headerStyle2.copyWith(fontSize: AppLayout.getHeight(26))),
          Gap(AppLayout.getHeight(10)),
        ],
      ),
    );
  }
}
