import 'package:flutter/material.dart';
import 'package:project_1/DetailsPage6/widget/rating_model.dart';

import '../../constants/assets.dart';

class RatingsView extends StatelessWidget {
  const RatingsView({
    Key? key,
    required this.ratingModel,
  }) : super(key: key);
  final RatingModel ratingModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Image.asset(
              ratingModel.image,
            ),
          ),
          Column(
            children: [
              Text(
                ratingModel.title,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
              Text(
                ratingModel.text,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
