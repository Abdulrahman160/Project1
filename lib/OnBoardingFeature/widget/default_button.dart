import 'package:flutter/material.dart';
import 'package:project_1/constants/colors.dart';

class DefaultButton extends StatelessWidget {
  final String buttonTitle;
  final Color? buttonColor;
  final Color? textColor;
  final Color? borderColor;

  const DefaultButton({
    Key? key,
    required this.buttonTitle,
    this.buttonColor,
    this.textColor,
     this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 53,
      width: double.infinity,
      // width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor !=null?borderColor!:AppColors.defaultColor,
        ),
        borderRadius: BorderRadius.circular(15),
        color: buttonColor,
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          buttonTitle,
          style: TextStyle(
              color: textColor == null ? Colors.white : textColor,
              fontSize: 20),
        ),
      ),
    );
  }
}
