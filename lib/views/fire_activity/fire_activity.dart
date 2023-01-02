import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:howard_app/models/fire_activity_model.dart';
import 'package:howard_app/routes/route_name.dart';
import 'package:howard_app/utils/app_layout.dart';
import 'package:howard_app/utils/app_styles.dart';
import 'package:howard_app/views/activity_description/activity_description.dart';
import 'package:page_transition/page_transition.dart';

class FireActivityScreen extends StatefulWidget {
  const FireActivityScreen({Key? key}) : super(key: key);

  @override
  State<FireActivityScreen> createState() => _FireActivityScreenState();
}

class _FireActivityScreenState extends State<FireActivityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.firebgColor,
      body: SafeArea(
        child: Container(
          height: AppLayout.getScreenHeight(),
          child: GridView.builder(
            physics: const AlwaysScrollableScrollPhysics(
              parent: BouncingScrollPhysics()
            ),
            shrinkWrap: true,
            itemCount: fireActivityList.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1,
                crossAxisSpacing: 40,
                mainAxisSpacing: 20),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  print("pressed");
                  Navigator.push(
                    context,
                    PageTransition(
                        child:  ActivityDescription(
                          image: fireActivityList[index].image,
                          title: fireActivityList[index].title,
                          description: fireActivityList[index].description,
                        ),
                        type: PageTransitionType.bottomToTop),
                  );
                },
                child: Hero(
                  tag: fireActivityList[index].image,

                  child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getWidth(20),
                        vertical: AppLayout.getWidth(20)),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(fireActivityList[index].image),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(
                            (index == 0 || index == 2 || index == 4) ? 30 : 0),
                        bottomLeft: Radius.circular(
                            (index == 1 || index == 3 || index == 5) ? 30 : 0),
                        topRight: Radius.circular((index == 6) ? 30 : 0),
                        topLeft: Radius.circular((index == 7) ? 30 : 0),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(),
                        ),
                        Center(
                          child: Text(
                            fireActivityList[index].title,
                            style: Styles.headerStyle2.copyWith(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const Spacer(),
                        Align(
                          alignment: Alignment.bottomRight,
                          child:
                              SvgPicture.asset("assets/images/arrow-icon2.svg"),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
