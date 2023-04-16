import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_1/4-Membership/widget/style.dart';

class TextFieldView extends StatelessWidget {
  const TextFieldView({
    Key? key,
    required this.title,
    this.keyboardType = TextInputType.text,
    this.color = Colors.black,
    this.height = 55,
    this.backgroundColor = Colors.white,
    this.numberOfLine = 1,  this.borderEnable=false,  required this.hintText,
  }) : super(key: key);
  final TextInputType keyboardType;

  final String title;
  final String hintText;
  final Color color;
  final double height;
  final Color backgroundColor;
  final int numberOfLine;
  final bool borderEnable;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Text(
            "$title*",
            style: Style.filedTitle,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: SizedBox(
            height: height,
            child: TextFormField(
              minLines: numberOfLine,
              maxLines: numberOfLine,
              keyboardType: keyboardType,
              decoration: InputDecoration(
                enabled: true,
                enabledBorder:borderEnable? OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey.shade300,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ):null,
                focusedBorder:borderEnable? OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey.shade300,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ):null,
                hintText: hintText,
                hintStyle: TextStyle(
                  color: color,
                ),
                filled: true,
                fillColor: backgroundColor,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 15,
        )
      ],
    );
  }
}
