import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:howard_app/widgets/element_select_container.dart';

class ElementSelectModel {
  final String icon;
  final String title;



  ElementSelectModel({
    required this.icon,
    required this.title,


  });
}



List <ElementSelectModel> elementSelectContainerList = [

    ElementSelectModel(icon: "assets/images/fire/fire.png", title: "Fire", ),
    ElementSelectModel(icon: "assets/images/water/water.png", title: "Water",),
    ElementSelectModel(icon: "assets/images/earth/earth1.png", title: "Earth",),
    ElementSelectModel(icon: "assets/images/air/air1.png", title: "Air",),
    ElementSelectModel(icon: "assets/images/all.png", title: "All",),

];
