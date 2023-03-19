import 'package:flutter/material.dart';

import '../../constants/assets.dart';

class ServiceModel {
  final String text;
  final String image;
  final Color background;

  ServiceModel({
    required this.text,
    required this.image,
    required this.background,
  });
}

List<ServiceModel> serviceModel = [
  ServiceModel(
    text: "شحنة جديدة",
    image: Assets.newBox,
    background: Color(0xff611EC7),
  ),
  ServiceModel(
    text: "تتبع الشحنة",
    image: Assets.searchBox,
    background: Color(0xffE327E0),
  ),
  ServiceModel(
    text: "حساب شحنة",
    image: Assets.boxSalary,
    background: Color(0xff03d236),
  ),
  ServiceModel(
    text: "الشحنات السابقة",
    image: Assets.lastBox,
    background: Color(0xfff5a419),
  ),
];
