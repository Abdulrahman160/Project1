import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class ContainerMessage extends StatelessWidget {
  const ContainerMessage({
    Key? key,
    required this.title,
    required this.message,
    required this.senderName,
  }) : super(key: key);
  final String title;
  final String message;
  final String senderName;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      height: 195,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColor.KBlue,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
              color: Colors.blue.withOpacity(0.5), //New

              offset: Offset(0,10))
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title

            ,
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          SizedBox(
            height: 5,
          ),
          Text(message,
            style: TextStyle(
              fontSize: 13,
              color: Colors.white.withOpacity(0.8),
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(senderName,

            style: TextStyle(
              color: Colors.white.withOpacity(0.6),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: EdgeInsets.only(right: 20),
              alignment: Alignment.centerRight,
              height: 45,
              width: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white.withOpacity(0.48)),
              child: Row(
                children: [
                  Text(
                    "تفاصيل",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Spacer(),
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Icon(
                      Icons.arrow_forward_ios_sharp,
                      size: 18,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
