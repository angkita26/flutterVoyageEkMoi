import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';


class SectionModel{
  final String title;
  final IconData icon;
  final VoidCallback? onPress;

  SectionModel(this.title, this.icon, this.onPress);

  static List<SectionModel> list = [
    SectionModel("A",LineAwesomeIcons.exclamation_triangle_solid, () => Get.to(() => (){})),
    SectionModel("B",Icons.message_outlined, () => Get.to(() => (){})),
    SectionModel("C",LineAwesomeIcons.road_solid, () => Get.to(() =>  (){})),
    SectionModel("D",LineAwesomeIcons.chart_bar, () => Get.to(() =>  (){})),
    SectionModel("E",Icons.tips_and_updates, () => Get.to(() =>   (){})),
    SectionModel("F",Icons.phone, () => Get.to(() =>   (){}))
  ];
}