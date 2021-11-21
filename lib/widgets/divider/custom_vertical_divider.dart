import 'package:flutter/material.dart';
import 'package:whatsapp_julia/styles/colors/color_styles.dart';
import 'package:whatsapp_julia/styles/sizes/size_styles.dart';

class CustomVerticalDivider extends StatelessWidget {
  const CustomVerticalDivider({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: SizeStyle.SIZE_25),
      height: SizeStyle.SIZE_50,
      width: 2.0,
      color: const Color(ColorsStyle.grey),
    );
  }
}