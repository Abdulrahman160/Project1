import 'package:flutter/material.dart';

import '../../constants/assets.dart';

class PromotionContainerView extends StatelessWidget {
  const PromotionContainerView({Key? key, required this.title, required this.text, required this.color}) : super(key: key);
final String title;
final String text;
final Color color;
  @override
  Widget build(BuildContext context) {
    return    Container(
      margin: EdgeInsets.only(top: 50),
      padding: EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 15,
      ),
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                Assets.crown,
                height: 40,
                width: 40,
              ),
              Text(title
               ,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Text(text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 40,
            width: 100,
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "تعرف المزيد",
                  style: TextStyle(color: Colors.white),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3.0),
                  child: Icon(
                    Icons.arrow_back_ios_new,size: 12,color: Colors.white,
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.white.withOpacity(0.4),
                )),
          )
        ],
      ),
    );
  }
}




