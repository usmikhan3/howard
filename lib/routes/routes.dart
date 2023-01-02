import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:howard_app/models/fire_activity_model.dart';
import 'package:howard_app/routes/route_name.dart';
import 'package:howard_app/views/activity_description/activity_description.dart';
import 'package:howard_app/views/auth/login_screen.dart';
import 'package:howard_app/views/auth/signup_screen1.dart';
import 'package:howard_app/views/auth/signup_screen2.dart';
import 'package:howard_app/views/dashboard/dashboard_screen.dart';
import 'package:howard_app/views/fire_activity/fire_activity.dart';
import 'package:howard_app/views/into/air_intro.dart';
import 'package:howard_app/views/into/earth_intro.dart';
import 'package:howard_app/views/into/fire_intro.dart';
import 'package:howard_app/views/into/intro_screen.dart';
import 'package:howard_app/views/into/water_intro.dart';
import 'package:howard_app/views/splash/splash_screen.dart';
import 'package:page_transition/page_transition.dart';

class Routes {
  static Route<dynamic> generatedRoutes(RouteSettings settings) {


    switch (settings.name) {
      case RouteName.splashView:
        return PageTransition(
            child: const SplashScreen(), type: PageTransitionType.fade);

      case RouteName.introView:
        return PageTransition(
            child: const MainIntroScreen(),
            type: PageTransitionType.rightToLeft);

      case RouteName.fireIntroView:
        return PageTransition(
            child: const FireIntroScreen(),
            type: PageTransitionType.rightToLeft);

      case RouteName.waterIntroView:
        return PageTransition(
            child: const WaterIntroScreen(),
            type: PageTransitionType.rightToLeft);
      case RouteName.airIntroView:
        return PageTransition(
            child: const AirIntroScreen(),
            type: PageTransitionType.rightToLeft);
      case RouteName.earthIntroView:
        return PageTransition(
            child: const EarthIntroScreen(),
            type: PageTransitionType.rightToLeft);
      case RouteName.loginView:
        return PageTransition(
            child: const LoginScreen(), type: PageTransitionType.rightToLeft);
      case RouteName.signup1View:
        return PageTransition(
            child: const SignUpScreen1(), type: PageTransitionType.rightToLeft);
      case RouteName.signup2View:
        return PageTransition(
            child: const SignUpScreen2(), type: PageTransitionType.rightToLeft);
      case RouteName.dashboardView:
        return PageTransition(
            child: const DashboardScreen(), type: PageTransitionType.rightToLeft);
      case RouteName.fireActivityView:

        return PageTransition(
            child: const FireActivityScreen(), type: PageTransitionType.fade);
      // case RouteName.activityDescriptionView:
      //   final args = settings.arguments as FireActivityModel;
      //   return PageTransition(
      //       child:  ActivityDescription(
      //         image: args.image,
      //         title: args.title,
      //         description: args.description,
      //       ), type: PageTransitionType.rightToLeft);
      default:
        return MaterialPageRoute(builder: (_) {
          return Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          );
        });
    }
  }
}
