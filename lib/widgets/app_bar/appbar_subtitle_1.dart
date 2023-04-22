import 'package:flutter/material.dart';
import 'package:joo_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class AppbarSubtitle1 extends StatelessWidget {
  AppbarSubtitle1({required this.text, this.margin});

  String text;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: Text(
        text,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.left,
        style: AppStyle.txtInterRegular16Gray900.copyWith(
          color: ColorConstant.gray900,
        ),
      ),
    );
  }
}
