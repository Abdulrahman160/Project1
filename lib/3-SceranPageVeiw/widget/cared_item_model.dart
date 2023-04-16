import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardItem {
  Color? backgroundColor;
  IconData? iconCard;
  String? title;

  CardItem({
    required this.title,
    required this.iconCard,
    required this.backgroundColor,
  });
}

List<CardItem> cardItemList = [
  CardItem(
    title: "HR",
    iconCard: Icons.person,
    backgroundColor: Colors.red,
  ),
  CardItem(
    title: "المشاريع",
    iconCard: Icons.star,
    backgroundColor: Colors.green,
  ),
];
