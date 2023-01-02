import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:howard_app/routes/route_name.dart';
import 'package:howard_app/utils/app_layout.dart';
import 'package:howard_app/utils/app_styles.dart';
import 'package:howard_app/views/journal_entry/journal_entry.dart';
import 'package:howard_app/views/journal_review/journal_review.dart';
import 'package:howard_app/widgets/rounded_button.dart';
import 'package:page_transition/page_transition.dart';


class RewardScreen extends StatelessWidget {
  const RewardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: AppLayout.getScreenHeight(),
        width: AppLayout.getScreenWidth(),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/reward_bg.png"),
          )
        ),
        child: Column(
          children: [
            Container(
              height: AppLayout.getScreenHeight() * 0.6,
              //width: double,
              decoration:const  BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage("assets/images/trophy.png"),
                  fit: BoxFit.fill,
                )
              ),
            ),

            Gap(AppLayout.getHeight(20)),

            Text("125 = \$1.25",style: Styles.headerStyle2,),

            Gap(AppLayout.getHeight(60)),

            
            Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(

                    child: RoundedButton(text: "My Dashboard", onPress: (){
                      Navigator.pushNamed(context, RouteName.dashboardView);
                    }),
                  ),

                  Gap(5),

                  Expanded(

                    child: RoundedOutlineButton(text: "My Entries", onPress: (){
                      Navigator.push(context, PageTransition(child:const JournalReview(), type: PageTransitionType.bottomToTop));
                    }),
                  )
                ],
              ),
            ),
            
            
          ],
        ),
      ),
    );
  }
}
