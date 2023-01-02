import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:howard_app/routes/route_name.dart';
import 'package:howard_app/utils/app_layout.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      const Duration(seconds: 5),
      () => Navigator.pushReplacementNamed(context, RouteName.introView),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: AppLayout.getScreenHeight(),
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/splash-bg.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 135,
              width: 135,
              child: SvgPicture.asset(
                "assets/images/logo.svg",
              ),
            ),
            Gap(AppLayout.getHeight(20)),
            Container(
              child: SvgPicture.asset(
                "assets/images/logo-text.svg",
              ),
            ),
            Gap(AppLayout.getHeight(40)),
            Container(
              height: 100,
              width: 100,
              child: Lottie.asset(
                "assets/animations/loader.json",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
