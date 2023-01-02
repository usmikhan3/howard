import 'package:flutter/material.dart';
import 'package:howard_app/utils/app_layout.dart';

class Styles{

    static Color buttonColor = const Color(0xFF132940);
    static Color formBorderColor = const Color(0xFF707070);
    static Color backButtonColor = const Color(0xFFF2B366);
    static Color firebgColor = const Color(0xFFF2C437);


    static TextStyle headerStyle1 =  TextStyle(
        fontSize: AppLayout.getHeight(50),
        fontFamily: 'Avenir',
        fontWeight: FontWeight.w700,

    );
    static TextStyle headerStyle2 =  TextStyle(
        fontSize: AppLayout.getHeight(30),
        fontFamily: 'Avenir',
        fontWeight: FontWeight.bold,

    );

    static TextStyle headerStyle3 = TextStyle(
        fontSize: AppLayout.getHeight(18),
        fontFamily: 'Avenir',
        fontWeight: FontWeight.w500,
    );



    static TextStyle textStyle = TextStyle(
        fontSize: AppLayout.getHeight(18),
    );

}