import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_1/constants/styles.dart';

import '../../constants/colors.dart';
import '../widget/create_account_details_model.dart';
import '../widget/default_button.dart';
import '../widget/text_field.dart';
import 'LoginView.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: DefaultAppBar(),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              // padding: EdgeInsets.all(15),
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
                // for(var item in createAccountDetails){
                //   Container(
                //     child: TextFieldView(
                //       createAccountDetails: item,
                //     )
                //   ).toList()
                // }

                // createAccountDetails.map(
                //       (e) => TextFieldView(
                //     createAccountDetails: e,
                //   ),
                // )
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "عند قيامك بالتسجيل معنا فأنت تلقائيا موافق على",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),

                    RichText(
                      text: TextSpan(
                          text: "سياسة الخصوصية و شروط الاستخدام ",

                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: AppColors.KPurple,
                            decorationColor: AppColors.KPurple,
                          ),
                          children: [
                            TextSpan(
                              text: "الخاصة بالتطبيق",
                              style: TextStyle(
                                  color: Colors.grey,
                                  decoration: TextDecoration.none),
                            ),
                          ]),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}

class DefaultAppBar extends StatelessWidget with PreferredSizeWidget {
  const DefaultAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // leading: ,
      elevation: 0,
      toolbarHeight: 65,
      centerTitle: true,
      automaticallyImplyLeading: false,
      backgroundColor: AppColors.KPurple,
      title: Text(
        "إنشاء حساب",
        style: TextStyle(fontSize: 20),
      ),
      // flexibleSpace: Padding(
      //   padding: const EdgeInsets.only(right: 8.0),
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Spacer(
      //         flex: 4,
      //       ),
      //       Container(
      //         alignment: Alignment.centerRight,
      //         child: InkWell(
      //           onTap: () {
      //             Get.off(LoginView());
      //           },
      //           child: Icon(
      //             Icons.arrow_back,
      //             color: Colors.white,
      //           ),
      //         ),
      //       ),
      //       Spacer(
      //         flex: 2,
      //       ),
      //     ],
      //   ),
      // ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(65);
}
