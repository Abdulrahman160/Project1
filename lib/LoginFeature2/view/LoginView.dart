import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_1/constants/assets.dart';

import '../../constants/colors.dart';
import '../../constants/styles.dart';
import '../widget/create_account_details_model.dart';
import '../widget/default_button.dart';
import '../widget/line_view.dart';
import '../widget/text_field.dart';
import 'create_account.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 65,
        centerTitle: true,
        backgroundColor: AppColors.KPurple,
        automaticallyImplyLeading: false,
        title: Text(
          "تسجيل الدخول",
          style: TextStyle(fontSize: 20),
        ),
        flexibleSpace: Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Container(
                alignment: Alignment.centerRight,
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(" أهلا بك مرة أخرى ! ", style: Styles.titleStyle),
            Text(
              "أدخل رقم الجوال و كلمة المرور الخاصه بك للتسجيل ",
              style: Styles.subTitleStyle2,
            ),
            SizedBox(
              height: 35,
            ),
            TextFieldView(
              createAccountDetails: createAccountDetails[1],
            ),
            TextFieldView(
              createAccountDetails: createAccountDetails[3],
            ),
            InkWell(
              child: Text(
                " نسيت كلمة المرور ؟",
                style: TextStyle(
                  fontSize: 18,
                  color: AppColors.KPurple,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            DefaultButtons(
              buttonTitle: "تسجيل الدخول",
              buttonColor: AppColors.KPurple,
            ),
            SizedBox(
              height: 30,
            ),
            LineView(text: "أو"),
            SizedBox(
              height: 30,
            ),
            DefaultButtons(
              buttonTitle: "التسجيل بحساب جوجل",
              textColor: Colors.black,
              borderColor: AppColors.KBlack.withOpacity(0.3),
              image: Image.asset(Assets.google),
            ),
            SizedBox(
              height: 20,
            ),
            DefaultButtons(
              buttonTitle: "التسجيل بالأي كلود ",
              textColor: Colors.black,
              borderColor: AppColors.KBlack.withOpacity(0.3),
              image: Image.asset(Assets.apple),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.center,
              child: RichText(
                text: TextSpan(
                  text: "ليس دليك حساب بعد ؟",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                  children: [
                    TextSpan(
                        text: "إنشاء حساب ",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Get.to(()=>CreateAccount());
                          }),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
