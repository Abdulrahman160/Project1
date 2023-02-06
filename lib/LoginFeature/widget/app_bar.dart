import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class AppBarView extends StatefulWidget {
  const AppBarView({Key? key, required this.title, this.actions}) : super(key: key);
  final String title;
  final List<Widget>? actions;

  @override
  State<AppBarView> createState() => _AppBarViewState();
}

class _AppBarViewState extends State<AppBarView> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: 65,
      centerTitle: true,
      backgroundColor: AppColors.KPurple,
      title: Text(
        widget.title,
        style: TextStyle(fontSize: 20),
      ),
      actions: widget.actions,
    );
  }
}
// Icon(Icons.arrow_back)