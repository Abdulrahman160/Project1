import 'package:project_1/constants/assets.dart';

class OnBoardingModel{
   String? image;
   String? title;
   String? text1;
   String? text2;
   String? text3;
   bool? changeButton;
   OnBoardingModel({
     required this.image ,
     required this.text1,
     required this.changeButton ,
     required this.text3 ,
     required this.text2 ,
     required this.title

});
}
List<OnBoardingModel> onBoardingList =[
  OnBoardingModel(
    image:Assets.onboarding1 ,
    title: "اهلا بك في كورسيز ",
    text1: "عن طريق منصه كورسيز يمكنك اختبار و",
    text2: "تنميه مهاراتك عن طريق اختبارات",
    text3: "معلمينك المفضلين",
    changeButton: true,
  ),
  OnBoardingModel(
    image: Assets.onboarding2, title: "تعرف على مستواك ونتائج اختباراتك ",
    text1: "يمكنك متابعه نتائج اختبراتك اول",
    text2: "بأول و معرفة مدى مستوى",
    text3: "تقدمك",

    changeButton: true,
  ),
  OnBoardingModel(
    image: Assets.onboarding3,
    title: "تابع معلمك المفضل ليصلك كل جديد",
    text1: "قم بمتابعة معلمك المفضل وتعرف",
    text2: "معه على مواعيداختباراته القادمه وكل ",
    text3: "جديد يضيفه",
    changeButton: false,
  )
];