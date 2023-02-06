import 'package:flutter/material.dart';
import 'package:project_1/constants/styles.dart';

import '../../OnBoardingFeature/widget/on_boarding.dart';
import '../../constants/colors.dart';
import '../widget/create_account_details_model.dart';
import '../widget/default_button.dart';
import '../widget/text_field.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 65,
        centerTitle: true,
        backgroundColor: AppColors.KPurple,
        title: Text(
          "إنشاء حساب",
          style: TextStyle(fontSize: 20),
        ),
        flexibleSpace: Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Column(
            children: [Spacer(flex: 4,),
              Container(alignment: Alignment.centerRight,
                child: Icon(Icons.arrow_back, color: Colors.white,),),
              Spacer(flex: 2,),
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "مرحبا بك في تطبيق هوك",
                  style: Styles.titleStyle,
                ),
                Text(
                  "إنشاء حساب الآن و تمتع بأسرع و أأمن طرق الشحن بالمملكة",
                  style: Styles.subTitleStyle2,
                ),
                SizedBox(
                  height: 30,
                ),
                TextFieldView(
                  createAccountDetails: createAccountDetails[0],
                ),
                TextFieldView(
                  createAccountDetails: createAccountDetails[1],
                ),
                TextFieldView(
                  createAccountDetails: createAccountDetails[2],
                ),
                TextFieldView(
                  createAccountDetails: createAccountDetails[3],
                ),
                TextFieldView(
                  createAccountDetails: createAccountDetails[4],
                ),
                DefaultButtons(
                  buttonTitle: 'إنشاء حساب ',
                  buttonColor: AppColors.KPurple,
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      RichText(
                        text: TextSpan(
                          text: "لديك حساب من قبل ؟ ",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(
                              text: "تسجيل الدخول",
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "عند قيامك بالتسجيل معنا فأنت تلقائيا موافق على",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      Align(
                          alignment: Alignment.center,
                          child: RichText(
                            text: TextSpan(
                                text: "سياسة الخصوصية و شروط الاستخدام",
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: AppColors.KPurple,
                                  decorationColor: AppColors.KPurple,
                                ),
                                children: [
                                  TextSpan(
                                    text: "الخاصة بالتطبيق",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ]),
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}
