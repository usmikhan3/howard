import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:howard_app/utils/app_layout.dart';
import 'package:howard_app/utils/app_styles.dart';

class ElementPointContainer extends StatelessWidget {
  final String image;
  final String element;
  final String point;
  const ElementPointContainer({Key? key,required this.image,required this.element,required this.point,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppLayout.getHeight(160),
      width: AppLayout.getHeight(60),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(AppLayout.getHeight(30)),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 2,
              spreadRadius: 1,
            ),
          ]

      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Gap(AppLayout.getHeight(5)),
          Image.asset("assets/images/$image.png",width: AppLayout.getHeight(40),),
          Text(element,style: Styles.textStyle.copyWith(fontWeight: FontWeight.w600,fontSize: AppLayout.getHeight(18)),),
          CircleAvatar(
            radius: AppLayout.getHeight(20),
            backgroundColor: Styles.buttonColor,
            child: Text(point,style: Styles.headerStyle2.copyWith(color: Colors.white,fontSize: 24),),
          ),
          Gap(AppLayout.getHeight(5)),
        ],
      ),

    );
  }
}
