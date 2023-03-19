import 'package:flutter/material.dart';
import 'package:project_1/DetailsPage6/widget/message_model.dart';

class MessageView extends StatelessWidget {
  const MessageView({
    Key? key,
    required this.messageModel,
  }) : super(key: key);
  final MessageModel messageModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            messageModel.name,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            messageModel.date,
            style: TextStyle(
              fontSize: 15,
              color: Colors.grey,
            ),
          ),
          Text(
            messageModel.message,
            style: TextStyle(
              fontSize: 15,
              color: Colors.black.withOpacity(0.7),
            ),
          ),
        ],
      ),
    );
  }
}
