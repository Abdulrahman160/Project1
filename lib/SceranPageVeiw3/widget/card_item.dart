import 'package:flutter/material.dart';
import 'package:project_1/SceranPageVeiw3/widget/cared_item_model.dart';

class CardItemView extends StatelessWidget {
  const CardItemView({Key? key, required this.cardItem,}) : super(key: key);
final CardItem cardItem;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 140,
          width: 200,
          decoration: BoxDecoration(
            color: cardItem.backgroundColor,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(child:Icon(cardItem.iconCard,size: 35,color: Colors.white,) ,
                backgroundColor: Colors.white.withOpacity(0.3),
                radius: 30,
              ),
              SizedBox(height: 15,),

              Text(
               cardItem.title!,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ],
          ),
        ),
        SizedBox(width: 15,)
      ],
    );
  }
}
