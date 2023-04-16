import 'package:flutter/material.dart';

class WorkDetailsModel {
  final IconData icon;
  final String title;
  final String text;

  WorkDetailsModel({
    required this.icon,
    required this.title,
    required this.text,
  });
}

List<WorkDetailsModel> workDetails = [
  WorkDetailsModel(
    icon: Icons.work_outline_sharp,
    title: "الأعمال المنجزة ",
    text: "25عمل منجز",
  ),
  WorkDetailsModel(
    icon: Icons.star_border,
    title: "التقيمات",
    text: "50تقيم",
  ),
  WorkDetailsModel(
    icon: Icons.location_on_outlined,
    title: "المدينة",
    text: "الرياض",
  ),
];
