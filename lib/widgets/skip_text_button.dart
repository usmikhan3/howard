import 'package:flutter/material.dart';
import 'package:howard_app/routes/route_name.dart';
import 'package:howard_app/utils/app_layout.dart';
import 'package:howard_app/utils/app_styles.dart';

class SkipTextButton extends StatelessWidget {

  const SkipTextButton({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>Navigator.pushReplacementNamed(context, RouteName.loginView),
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20),vertical: AppLayout.getHeight(20)),
        child: Align(
          alignment: Alignment.centerRight,
          child: Text("Skip", style: Styles.headerStyle2.copyWith(color: Colors.white),),
        ),
      ),
    );
  }
}
