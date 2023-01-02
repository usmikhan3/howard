import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:howard_app/routes/route_name.dart';
import 'package:howard_app/utils/app_layout.dart';
import 'package:howard_app/utils/app_styles.dart';
import 'package:howard_app/widgets/rounded_button.dart';
import 'package:howard_app/widgets/skip_text_button.dart';


class WaterIntroScreen extends StatelessWidget {
  const WaterIntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          height: AppLayout.getScreenHeight(),
          decoration:const  BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/water/water-bg.png",
                ),
                fit: BoxFit.fill,

              )
          ),
          child: Column(
            children: [
              Gap(AppLayout.getHeight(50)),
              Container(
                child: Text(
                  "Water",
                  style: Styles.headerStyle1.copyWith(
                    fontSize: AppLayout.getHeight(100),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(30)),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.ullamco laboris nisi ut aliquip ex ea ",
                  style: Styles.textStyle,
                  textAlign: TextAlign.center,
                ),
              ),
              Gap(AppLayout.getHeight(30)),
              RoundedButton(text: "Next", onPress:  ()=>Navigator.pushReplacementNamed(context, RouteName.airIntroView),),


              const Spacer(),
              const SkipTextButton(),


            ],
          ),
        ),
      ),
    );
  }
}
