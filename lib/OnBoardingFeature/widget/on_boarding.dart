import 'package:flutter/material.dart';
import 'package:project_1/constants/styles.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../constants/colors.dart';
import '../view/OnBordingView.dart';
import 'on_boarding_model.dart';
import 'default_button.dart';

class OnBoarding extends StatelessWidget {
  final OnBoardingModel onBoardingModel;

  const OnBoarding({super.key, required this.onBoardingModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 180,
        ),
        Image.asset(onBoardingModel.image ?? ''),
        Spacer(flex: 1),
        Text(
          onBoardingModel.title!,
          style: Styles.titleStyle,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(onBoardingModel.text1!, style: Styles.subTitleStyle),
        Text(
          onBoardingModel.text2!,
          style: Styles.subTitleStyle,
        ),
        Text(onBoardingModel.text3!, style: Styles.subTitleStyle),
        Spacer(flex: 20),
        SmoothPageIndicator(
          controller: pageController, // PageController
          count: onBoardingList.length,
          effect: ExpandingDotsEffect(
            activeDotColor: AppColors.KPink,
          ), // your preferred effect
        ),
        Spacer(
          flex: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: onBoardingModel.changeButton!
              ? Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: InkWell(
                        child: DefaultButton(
                          buttonTitle: 'تخطي',
                          textColor: AppColors.KPink,
                          borderColor: AppColors.KPink,
                        ),
                        onTap: () {
                          pageController.animateToPage(
                            pageChanged = 2,
                            duration: Duration(milliseconds: 250),
                            curve: Curves.bounceInOut,
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: InkWell(
                        child: DefaultButton(
                          buttonTitle: "التالي",
                          buttonColor: AppColors.KPink,
                          borderColor: AppColors.defaultColor,
                        ),
                        onTap: () {
                          pageController.animateToPage(
                            pageChanged! + 1,
                            duration: Duration(milliseconds: 250),
                            curve: Curves.bounceInOut,
                          );
                        },
                      ),
                    ),
                  ],
                )
              : InkWell(
                  child: DefaultButton(
                    buttonTitle: 'ابدأ الأن',
                    buttonColor: AppColors.KPink,
                    borderColor: AppColors.defaultColor,
                  ),
                ),
        ),
        SizedBox(
          height: 30,
        )
      ],
    );
  }
}
