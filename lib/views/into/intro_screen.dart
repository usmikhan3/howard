import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:howard_app/routes/route_name.dart';
import 'package:howard_app/utils/app_layout.dart';
import 'package:howard_app/utils/app_styles.dart';
import 'package:howard_app/widgets/rounded_button.dart';

class MainIntroScreen extends StatelessWidget {
  const MainIntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              
              
              Gap(AppLayout.getHeight(30)),

              //TODO: THE 4ElEMENTS HEADING
              Text(
                "The 4Elements",
                style: Styles.headerStyle1,
                textAlign: TextAlign.center,
              ),
              Gap(AppLayout.getHeight(15)),

              //TODO: SUB HEADING
              Text(
                "How the Journey Works",
                style: Styles.headerStyle2.copyWith(fontWeight: FontWeight.w500,fontSize: 25),
                textAlign: TextAlign.center,
              ),

              Gap(AppLayout.getHeight(20)),

              //TODO: INTRO TEXT
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(40)),
                child: Text(
                  "Each of Nature's Elements manifests differnetly within us. \n \nIn order to maximize their powerfuless,each one has a series of asscoiated activities. \n\nYou'll enjoy tracking these activities every day, and looking over your weekly/monthlysuccesses.\n\nBe on the lookout for inspirational message along with coupons our e-commerce store, 4Element Lifestyle.",
                  style: Styles.textStyle.copyWith(fontSize: 16,),
                  textAlign: TextAlign.left,
                ),
              ),


              Gap(AppLayout.getHeight(20)),

              //TODO:  ELEMENTS PIC
              Container(
                height: 200,
                width: 200,
                //color: Colors.red,
                child: Image.asset("assets/images/elements-group.png",fit: BoxFit.contain,),
              ),


              Gap(AppLayout.getHeight(20)),

              //TODO: NEXT BUTTON

               RoundedButton(text: "Next",onPress: ()=>Navigator.pushReplacementNamed(context, RouteName.fireIntroView),),

              Gap(AppLayout.getHeight(20)),
            ],
          ),
        ),
      ),
    );
  }
}
