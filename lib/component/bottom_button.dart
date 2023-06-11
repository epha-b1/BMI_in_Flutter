
import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.ontap,required this.bottomTitle});
  final Function() ontap;
  final String bottomTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:ontap,
      child: Container(
        color: kBottomContainerColor,
        margin: const EdgeInsets.only(top: 10.0),
        padding: const EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: kBottomNavigationBarHeight,
        child:  Center(
          child: Text(bottomTitle,
            style: kLargeButtonTextStle,),
        ),
      ),
    );
  }
}
