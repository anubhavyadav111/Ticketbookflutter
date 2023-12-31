import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Thickcontanier extends StatelessWidget {
  bool? isColor;

  Thickcontanier({Key? key, required this.isColor}) : super(key: key);

  @override
  //bool? isColor;
  //ThickContanier({Key? key , required this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: 2.5,
            color: isColor == null ? Colors.white : const Color(0xFF8ACCF7)),
      ),
    );
  }
}
