import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'TrackYourShipment7/view/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: GetMaterialApp(
        locale: Locale('ar'),
        home: HomePageView(),
      ),
    );
  }
}
