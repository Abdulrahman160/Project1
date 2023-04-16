import 'package:flutter/material.dart';

import '../../constants/assets.dart';

class TeacherContainerVerticalView extends StatelessWidget {
  const TeacherContainerVerticalView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return                 Container(
      padding: EdgeInsets.all(10),
      height: 270,
      width: 155,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Colors.grey.withOpacity(.5),
        ),
      ),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(Assets.ammar),
            radius: 40,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "دكتور عمار حسني",
            style: TextStyle(color: Colors.black),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "#23820",
            style: TextStyle(
              color: Colors.grey.withOpacity(.5),
            ),
          ),
          Text(
            "كليه الهندسه جامعة المنصوره",
            style: TextStyle(
              color: Colors.black.withOpacity(.7),
              fontSize: 12,
            ),
          ),
          Text(
            "قسم الميكانيكا",
            style: TextStyle(
              color: Colors.black.withOpacity(.7),
              fontSize: 12,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Icon(
                Icons.people_alt_outlined,
                size: 15,
              ),
              Text(
                "  عدد المنضمين :380 طالب ",
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey,
                ),
              )
            ],
          ),
          SizedBox(
            height: 7,
          ),
          Container(
            alignment: Alignment.center,
            height: 30,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.purple.shade700,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              "إلغاء الانضمام",
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          )
        ],
      ),
    )
    ;
  }
}
