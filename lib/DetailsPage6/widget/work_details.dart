import 'package:flutter/material.dart';
import 'package:project_1/DetailsPage6/widget/work_details_model.dart';

class WorkDetails extends StatelessWidget {
  const WorkDetails({
    Key? key,
    required this.workDetailsModel,
  }) : super(key: key);
  final WorkDetailsModel workDetailsModel;

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: CircleAvatar(
              backgroundColor: Colors.grey.shade100,
              radius: 15,
              child: Icon(size: 16,
                workDetailsModel.icon,
                color: Colors.deepPurple,
              ),
            ),
          ),
          Column(
            children: [
              Text(
                workDetailsModel.title,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                workDetailsModel.text,
                style: TextStyle(
                  fontSize: 15,
                  
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
