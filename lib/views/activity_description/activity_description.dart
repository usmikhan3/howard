import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:howard_app/routes/route_name.dart';
import 'package:howard_app/utils/app_layout.dart';
import 'package:howard_app/utils/app_styles.dart';
import 'package:howard_app/views/journal_entry/journal_entry.dart';
import 'package:howard_app/widgets/rounded_button.dart';
import 'package:page_transition/page_transition.dart';

class ActivityDescription extends StatefulWidget {
  final String image;
  final String title;
  final String description;
  const ActivityDescription({
    Key? key,
    required this.image,
    required this.title,
    required this.description
  }) : super(key: key);

  @override
  State<ActivityDescription> createState() => _ActivityDescriptionState();
}

class _ActivityDescriptionState extends State<ActivityDescription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //TODO: IMAGE

          Stack(
            children: [
              Hero(
                tag: widget.image,
                child: Container(
                  height: AppLayout.getScreenHeight() * 0.4,
                  width: double.infinity,
                  decoration:  BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(widget.image),
                      fit: BoxFit.cover,
                    ),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: Styles.headerStyle2,
                    textAlign: TextAlign.left,
                  ),
                  Gap(AppLayout.getHeight(30)),
                  Text(
                   // "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud. ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa.deserunt mollit anim id est laborum.",
                   widget.description,
                    style: Styles.textStyle,
                  ),
                  Gap(AppLayout.getHeight(30)),
                  Row(
                    children: [
                      SizedBox(
                          width: AppLayout.getWidth(150),
                          child: RoundedButton(
                              text: "Journal Entry", onPress: () {
                                Navigator.push(context, PageTransition(child: JournalEntry(title: widget.title,), type: PageTransitionType.topToBottom));
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
