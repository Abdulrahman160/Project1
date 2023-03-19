import 'package:flutter/material.dart';
import 'package:project_1/constants/colors.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    Key? key,
    this.icon,
    this.borderColor = false,
    required this.text,
    this.enableIcon = false,
  }) : super(key: key);
  final IconData? icon;
  final bool borderColor;
  final String text;
  final bool enableIcon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 45,
        decoration: BoxDecoration(
          color: borderColor ? Colors.transparent : AppColors.kGreen,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: borderColor ? AppColors.kGreen : Colors.white,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "ارسال رسالة ",
              style: TextStyle(
                  color: borderColor ? AppColors.kGreen : Colors.white,
                  fontSize: 15),
            ),
            enableIcon
                ? Icon(
                    icon,
                    color: AppColors.kGreen,
                  )
                : Text(""),
          ],
        ),
      ),
    );
  }
}
