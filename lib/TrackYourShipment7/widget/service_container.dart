import 'package:flutter/material.dart';
import 'package:project_1/TrackYourShipment7/widget/service_container_model.dart';

import '../../constants/assets.dart';

class ContainerServiceView extends StatelessWidget {
  const ContainerServiceView({
    Key? key,
    required this.serviceModel,
  }) : super(key: key);
  final ServiceModel serviceModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 170,
      width: 160,
      decoration: BoxDecoration(
        color:serviceModel.background ,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Colors.white.withOpacity(0.2),
            child: Image.asset(serviceModel.image),
            radius: 25,
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            serviceModel.text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          )
        ],
      ),
    );
  }
}
