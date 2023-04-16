import 'package:flutter/material.dart';

import '../../constants/assets.dart';

class CardItems extends StatelessWidget {
  const CardItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(10),
        height: 150,
        width: 340,
        color: Colors.white,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              flex: 3,
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "ثوب رجالي شتوي برقبه متوفر جميع الألوان والمقاسات",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  GridView.count(
                    childAspectRatio: 5/1,
                    children: List.generate(detailsProduct.length, (index) {
                      return Details (detailsProduct:detailsProduct[index] ,);
                    }),
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,


                  ),
                ],
              ),
            ),

            Flexible(
                flex: 1,
                child: Image.asset(
                  Assets.prodactItem,
                ))
          ],
        ),
      ),

    );
  }
}

class Details extends StatelessWidget {
  const Details({Key? key, required this.detailsProduct,}) : super(key: key);
final DetailsProduct detailsProduct;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          detailsProduct.icon,
          color: Colors.black,
          size: 17,
        ),
        SizedBox(
          width: 8,
        ),
        Text(
          detailsProduct.text,

          style: TextStyle(color: Colors.black),
        ),
      ],
    );
  }
}

class DetailsProduct {
  final String text;
  final IconData icon;

  DetailsProduct({
    required this.icon,
    required this.text,
  });
}

List<DetailsProduct> detailsProduct = [
  DetailsProduct(
    icon: Icons.location_on_outlined,
    text: 'مكه المكرمه',
  ),
  DetailsProduct(
    icon: Icons.access_time,
    text: 'قبل اسبوع',
  ),
  DetailsProduct(
    icon: Icons.person_outline_outlined,
    text: 'الحاج حمدي فتحي',
  ),
];
