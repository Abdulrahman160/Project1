import 'package:flutter/material.dart';

import '../widget/on_boarding.dart';
import '../widget/on_boarding_model.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

final pageController = PageController();

int? pageChanged;

class _OnBoardingViewState extends State<OnBoardingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        pageSnapping: true,
        onPageChanged: (index) {
          setState(() {
            pageChanged = index;
          });
        },
        controller: pageController,
        children:
            onBoardingList.map((e) => OnBoarding(onBoardingModel: e)).toList(),
        // [
        //   OnBoarding(
        //       onBoardingModel: onBoardingList[0],
        //   ),
        //   OnBoarding(
        //       onBoardingModel: onBoardingList[1]
        //   ),
        //   OnBoarding(
        //       onBoardingModel: onBoardingList[2]
        //   ),
        // ],
      ),
    );
  }
}
//
