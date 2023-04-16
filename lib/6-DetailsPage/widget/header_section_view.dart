import 'package:flutter/material.dart';

class HeaderSectionView extends StatelessWidget {
  const HeaderSectionView({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        padding: EdgeInsets.only(
          right: 20,
        ),
        width: double.infinity,
        color: Colors.grey.shade100,
        child: Text(
          title,
          style: TextStyle(
            color: Colors.black.withOpacity(0.5),
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
