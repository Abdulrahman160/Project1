import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'LoginFeature/view/LoginView.dart';
import 'LoginFeature/view/create_account.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: Locale('ar'),
      home: LoginView(),
    );
  }
}
