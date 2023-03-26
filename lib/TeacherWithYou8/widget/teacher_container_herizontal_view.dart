import 'package:flutter/material.dart';

import '../../constants/assets.dart';

class TeacherContainerHorizontalView extends StatelessWidget {
  const TeacherContainerHorizontalView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return                 Container(
      padding: EdgeInsets.all(10),
      height: 130,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey),
      ),
      child: Row(
        children: [
          Image.asset(
            Assets.ammar,
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            children: [
              Text(
                "دكتور عمار حسني",
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "#23820",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey.withOpacity(.5),
                ),
              ),
              Text(
                "كليه الهندسه جامعة المنصوره",
                style: TextStyle(
                  color: Colors.black.withOpacity(.7),
                  fontSize: 15,
                ),
              ),
              Text(
                "قسم الميكانيكا",
                style: TextStyle(
                  color: Colors.black.withOpacity(.7),
                  fontSize: 15,
                ),
              ),
            ],
          ),
          Spacer(),
          Icon(
            Icons.arrow_back_ios_new,
            size: 35,
            color: Colors.purple,
          )
        ],
      ),
    );
  }
}
