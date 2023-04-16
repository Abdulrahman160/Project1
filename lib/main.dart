import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '9-DoctorVedio/view/doctor_details_view.dart';

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
        home: DoctorDetailsView(),
      ),
    );
  }
}
