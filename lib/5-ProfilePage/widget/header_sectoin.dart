import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({
    Key? key,
    required this.title,
    this.isSelected = true,
  }) : super(key: key);
  final String title;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: isSelected ? AppColors.kGreen : Colors.grey,
              width: isSelected ? 2 : 1,
            ),
          ),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: isSelected ? Colors.black : Colors.grey,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
