import 'package:flutter/material.dart';
import 'package:howard_app/utils/app_layout.dart';
import 'package:howard_app/utils/app_styles.dart';



class ElementSelectContainer extends StatelessWidget {
  final String image;
  final String element;
  final VoidCallback onTap;
  final Color color;
  final Color textColor;
  const ElementSelectContainer({Key? key,required this.image,required this.element,required this.onTap, this.color = Colors.white,this.textColor = Colors.black}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: onTap,
      child: Container(
        height: AppLayout.getHeight(100),
        width: AppLayout.getHeight(60),
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(10),vertical: AppLayout.getHeight(10)),
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(AppLayout.getHeight(30)),
            boxShadow:  const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 3,
                spreadRadius: 1,
                offset: Offset(3,5)
              ),
            ]

        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Image.asset(image,width: AppLayout.getHeight(80),),
            FittedBox(child: Text(element,style: Styles.textStyle.copyWith(fontWeight: FontWeight.w600,fontSize: AppLayout.getHeight(16), color: textColor),)),

          ],
        ),

      ),
    );
  }
}
