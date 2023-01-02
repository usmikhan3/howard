import 'package:flutter/material.dart';
import 'package:howard_app/routes/route_name.dart';
import 'package:howard_app/routes/routes.dart';
import 'package:howard_app/views/activity_description/activity_description.dart';
import 'package:howard_app/views/dashboard/dashboard_screen.dart';
import 'package:howard_app/views/fire_activity/fire_activity.dart';
import 'package:howard_app/views/into/fire_intro.dart';

import 'package:howard_app/views/journal_review/journal_review.dart';
import 'package:howard_app/views/reward/reward_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Howard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        //fontFamily: 'Avenir',
      ),

     //home:const  RewardScreen(),
      initialRoute: RouteName.splashView,
     onGenerateRoute: Routes.generatedRoutes,
    );
  }
}


