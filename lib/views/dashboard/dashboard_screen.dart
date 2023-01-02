import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:gap/gap.dart';
import 'package:howard_app/models/score_card_model.dart';
import 'package:howard_app/routes/route_name.dart';
import 'package:howard_app/utils/app_layout.dart';
import 'package:howard_app/utils/app_styles.dart';
import 'package:howard_app/widgets/elements_point_container.dart';
import 'package:howard_app/widgets/points_contatiner.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(
              parent: BouncingScrollPhysics()),
          child: Stack(
            children: [
              Column(
                children: [
                  //TODO: BANNER
                  Container(
                    height: AppLayout.getHeight(280),
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/images/dashboard-banner.png",
                          ),
                          fit: BoxFit.fill),
                    ),
                    child: Column(
                      children: [
                        Gap(AppLayout.getWidth(40)),
                        Row(
                          children: [
                            Container(
                              margin:
                                  EdgeInsets.only(left: AppLayout.getWidth(50)),
                              height: 50,
                              width: 50,
                              child: Image.asset("assets/images/profile.png"),
                            ),
                            Gap(AppLayout.getWidth(5)),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Hi, John Dow",
                                  style: Styles.headerStyle3.copyWith(
                                      fontWeight: FontWeight.w600,
                                      fontSize: AppLayout.getHeight(22)),
                                ),
                                Text(
                                  "How many points today?",
                                  style: Styles.headerStyle3,
                                ),
                              ],
                            )
                          ],
                        ),
                        Gap(AppLayout.getWidth(50)),
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: AppLayout.getHeight(50)),
                          height: 80,
                          width: double.infinity,
                          decoration: BoxDecoration(color: Colors.white24),
                          child: Center(
                            child: Text(
                              "Dashboard",
                              style: Styles.headerStyle1,
                            ),
                          ),
                        ),
                        Gap(AppLayout.getWidth(20)),
                      ],
                    ),
                  ),

                  //TODO: BODY
                  Container(
                    child: Column(
                      children: [
                        Gap(AppLayout.getHeight(120)),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: AppLayout.getHeight(20)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, RouteName.fireActivityView);
                                },
                                child:const  ElementPointContainer(
                                  element: "Fire",
                                  image: "fire/fire",
                                  point: "15",
                                ),
                              ),
                              const ElementPointContainer(
                                element: "Water",
                                image: "water/water",
                                point: "29",
                              ),
                              const ElementPointContainer(
                                element: "Air",
                                image: "air/air1",
                                point: "30",
                              ),
                              const ElementPointContainer(
                                element: "Earth",
                                image: "earth/earth1",
                                point: "14",
                              ),
                            ],
                          ),
                        ),
                        Gap(AppLayout.getHeight(20)),
                        Row(
                          children: [
                            Expanded(
                                child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: AppLayout.getWidth(5)),
                              height: AppLayout.getHeight(60),
                              margin: EdgeInsets.symmetric(
                                  horizontal: AppLayout.getWidth(20)),
                              decoration: BoxDecoration(
                                  color: Styles.buttonColor,
                                  borderRadius: BorderRadius.circular(30)),
                              child: Center(
                                child: Text(
                                  ("Review journal entries"),
                                  style: Styles.headerStyle2.copyWith(
                                      color: Colors.white,
                                      fontSize: AppLayout.getHeight(18)),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            )),
                            Container(
                              margin: EdgeInsets.only(
                                  right: AppLayout.getHeight(20)),
                              width: 120,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 2,
                                        spreadRadius: 1)
                                  ]),
                              child: Column(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(3),
                                    decoration: BoxDecoration(
                                      color: Styles.buttonColor,
                                      borderRadius:const BorderRadius.only(
                                        topRight: Radius.circular(15),
                                        topLeft: Radius.circular(15),
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Score",
                                        style: Styles.headerStyle3.copyWith(
                                            color: Colors.white,
                                            fontSize: AppLayout.getHeight(24),
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ),
                                  Container(
                                      padding: const EdgeInsets.all(3),
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(15),
                                          bottomLeft: Radius.circular(15),
                                        ),
                                      ),
                                      child: Center(
                                          child: Text(
                                        "124",
                                        style: Styles.headerStyle3.copyWith(
                                            fontSize: AppLayout.getHeight(24),
                                            fontWeight: FontWeight.w600),
                                      )))
                                ],
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            Center(
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: AppLayout.getHeight(20),
                                    vertical: AppLayout.getHeight(20)),
                                child: Image.asset("assets/images/bedge.png"),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              child: Image.asset(
                                "assets/images/sparkle1.png",
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                height: 200,
                width: AppLayout.getScreenWidth(),
                top: AppLayout.getHeight(200),
                child: CarouselSlider.builder(
                    itemCount: scoreCardList.length,
                    options: CarouselOptions(
                      height: AppLayout.getHeight(140),
                      aspectRatio: 16 / 9,
                      viewportFraction: 0.4,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlayInterval:const  Duration(seconds: 3),
                      autoPlayAnimationDuration:const  Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      enlargeFactor: 0.3,
                      scrollDirection: Axis.horizontal,
                    ),
                    itemBuilder:
                        (BuildContext context, int i, int pageViewIndex) {
                      return PointsContainer(
                        day: scoreCardList[i].day,
                        points: scoreCardList[i].score,
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
