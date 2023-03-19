import '../../constants/assets.dart';

class RatingModel{

  final String title;
  final String text;
  final String image;

  RatingModel({
    required this.title,
    required this.image,
    required this.text,
});

}


List<RatingModel> ratingDetails=[
  RatingModel(title: "ممتاز", image:Assets.happy, text: "30 تقيم"),
  RatingModel(title: "جيد", image:Assets.good, text: "10 تقيم"),
  RatingModel(title: "غير متعاون", image:Assets.notBad, text: "5 تقيم"),
  RatingModel(title: "سئ", image:Assets.bad, text: "5 تقيم"),
];