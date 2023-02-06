import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import 'create_account_details_model.dart';

class TextFieldView extends StatelessWidget {
  const TextFieldView({
    Key? key,
    required this.createAccountDetails,
  }) : super(key: key);
  final CreateAccountDetails createAccountDetails;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          keyboardType: createAccountDetails.keyboardType,
          cursorColor: Colors.black,
          decoration: InputDecoration(
              suffixIconColor: AppColors.KPurple,
              suffixIcon: createAccountDetails.enabelsuffixIcon == true
                  ? IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.remove_red_eye,
                      ),
                    )
                  : null,
              prefixIcon: Icon(
                createAccountDetails.prefixIcons,
                color: AppColors.KBlack.withOpacity(0.3),
              ),
              focusColor: AppColors.KPurple,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  width: 2,
                  color: AppColors.KBlack.withOpacity(0.3),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: AppColors.KPurple,
                ),
              ),
              labelText: createAccountDetails.hintText,
              labelStyle: TextStyle(
                fontWeight: FontWeight.bold,
                color: AppColors.KBlack.withOpacity(0.3),
              )),
        ),
        SizedBox(
          height: 25,
        ),
      ],
    );
  }
}
