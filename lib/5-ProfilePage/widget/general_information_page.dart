import 'package:flutter/material.dart';

class GeneralInfoPage extends StatelessWidget {
  const GeneralInfoPage({
    Key? key,
    required this.icon,
    required this.title,
    required this.text,
  }) : super(key: key);
  final IconData icon;
  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.grey,
          ),
          RichText(
            text: TextSpan(
              text: " $title: ",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
              children: [
                TextSpan(
                  text: text,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
