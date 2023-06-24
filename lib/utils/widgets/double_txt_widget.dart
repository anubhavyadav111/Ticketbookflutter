import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../app_styles.dart';

class DoubleTxtData extends StatelessWidget {
  final String BigData;
  final String SmallData;
  const DoubleTxtData({Key? key, required this.BigData, required this.SmallData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(BigData,  style: Styles.headLineStyle2,),
        InkWell(
            onTap: (){
              print("You are tapped ");
            },
            child: Text(SmallData, style: Styles.textStyle.copyWith(color: Styles.primaryColor),)),

      ],
    );
  }
}
