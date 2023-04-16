import 'package:flutter/material.dart';
import 'package:project_1/constants/colors.dart';

class DefaultButtons extends StatelessWidget {
  final String buttonTitle;
  final Color? buttonColor;
  final Color? textColor;
  final Color? borderColor;
final StatefulWidget? image;
  const DefaultButtons({
    Key? key,
    required this.buttonTitle,
    this.buttonColor,
    this.textColor,
    this.borderColor,  this.image,
  }) : super(key: key);
  @override


  Widget build(BuildContext context) {
    double height=30;

    return Container(
      height: 63,
      width: double.infinity,
      // width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor != null ? borderColor! : AppColors.defaultColor,
        ),
        borderRadius: BorderRadius.circular(15),
        color: buttonColor,
      ),
      child: Align(
        alignment: Alignment.center,
         child:Row(mainAxisAlignment: MainAxisAlignment.center,
             children: [
           Text(
             buttonTitle,
             style: TextStyle(
                 color: textColor == null ? Colors.white : textColor!,
                 fontSize: 18),
           ),
           Container(height:height,child: image!=null?image!:null),

         ]),

      ),
    );
  }
}
