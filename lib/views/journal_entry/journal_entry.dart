import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:howard_app/views/journal_review/journal_review.dart';
import 'package:howard_app/views/reward/reward_screen.dart';
import 'package:jiffy/jiffy.dart';
import 'package:howard_app/routes/route_name.dart';
import 'package:howard_app/utils/app_layout.dart';
import 'package:howard_app/utils/app_styles.dart';
import 'package:howard_app/widgets/rounded_button.dart';
import 'package:page_transition/page_transition.dart';

class JournalEntry extends StatefulWidget {

   final String title;

  const JournalEntry({
    Key? key,

    required this.title,

  }) : super(key: key);

  @override
  State<JournalEntry> createState() => _JournalEntryState();
}

class _JournalEntryState extends State<JournalEntry> {

  DateTime currentTime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //TODO: IMAGE

          Stack(
            children: [
              Container(
                height: AppLayout.getScreenHeight() * 0.4,
                width: double.infinity,
                decoration:   BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(

                     widget.title == "Project a goal"  ?   "assets/images/fire/firejournal1.png" :
                         widget.title =="Reflect on Life" ? "assets/images/fire/firejournal2.png" :
                         widget.title =="Express kindness"  ? "assets/images/fire/firejournal3.png" :


                         widget.title =="Pray? Meditate"  ? "assets/images/fire/firejournal4.png" :

                         widget.title =="Joining Others"  ? "assets/images/fire/firejournal5.png" :

                         widget.title =="Feeling Grateful"  ? "assets/images/fire/firejournal6.png" :
                         widget.title =="Feeling Awe"  ? "assets/images/fire/firejournal7.png" :

                         widget.title =="Be Creative"  ? "assets/images/fire/firejournal8.png"
                             :

                         "assets/images/fire/firejournal1.png"


                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                  child: Text(
                    widget.title,
                    style: Styles.headerStyle1.copyWith(color: Colors.white),

                  ),
                ),
              ),



              Positioned(
                top: AppLayout.getHeight(30),
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: AppLayout.getWidth(10)),
                  child: InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Container(

                      height: 50,
                      width: 50,

                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Styles.backButtonColor,
                      ),
                      child: const Center(
                        child: Icon(Icons.arrow_back,color: Colors.black,size: 18,),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getWidth(30),
                  vertical: AppLayout.getHeight(30)),
              height: AppLayout.getScreenHeight() * 0.65,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [

                  Gap(AppLayout.getHeight(10)),
                  Text(
                    "Entry for ${Jiffy(currentTime).format('MMM do yyyy')} ",
                    style: Styles.headerStyle2.copyWith(fontSize: AppLayout.getHeight(26)),
                    textAlign: TextAlign.left,
                  ),


                  Gap(AppLayout.getHeight(30)),

                  Container(
                    padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20)),
                    child: TextField(
                      maxLines: 6,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.grey)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color:Styles.buttonColor,width: 2)
                        ),
                      ),
                    ),
                  ),

                  Gap(AppLayout.getHeight(30)),
                  Image.asset("assets/images/elementsgroup.png"),

                  Gap(AppLayout.getHeight(30)),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20)),
                    child: Row(
                      children: [
                        SizedBox(
                            width: AppLayout.getWidth(150),
                            child: RoundedButton(
                                text: "Submit", onPress: () {
                                  Navigator.push(context, PageTransition(child: RewardScreen(), type: PageTransitionType.rightToLeft));
                            })),
                        Gap(AppLayout.getWidth(20)),
                        InkWell(
                          onTap: (){
                            Navigator.pushNamed(context, RouteName.dashboardView);
                          },
                          child: Text(
                            "Dashboard",
                            style: Styles.headerStyle3.copyWith(
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
