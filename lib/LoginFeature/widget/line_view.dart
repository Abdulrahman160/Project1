import 'package:flutter/material.dart';

class LineView extends StatelessWidget {
  const LineView({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    double height = 2;
    Color lineColor = Colors.grey.withOpacity(0.2);
    return Row(
      children: [
        Expanded(
          child: Container(
            height: height,
            color: lineColor,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10.0,
          ),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.grey.withOpacity(0.5),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: height,
            color: lineColor,
          ),
        ),
      ],
    );
  }
}
