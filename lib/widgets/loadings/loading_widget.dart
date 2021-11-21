import 'package:flutter/material.dart';
import 'package:whatsapp_julia/styles/colors/color_styles.dart';

class LoadingWidget extends StatelessWidget {
  final String? text;
  final double? opacity;

  LoadingWidget({this.text, this.opacity});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      color: const Color(ColorsStyle.grey_light).withOpacity(opacity ?? .4),
      child: CircularProgressIndicator(
        backgroundColor: Colors.white,
        valueColor: AlwaysStoppedAnimation<Color>(
          Theme.of(context).colorScheme.primaryVariant,
        ),
      ),
    );
  }
}