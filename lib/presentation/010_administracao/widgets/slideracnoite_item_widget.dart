import 'package:flutter/material.dart';
import 'package:joo_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class SlideracnoiteItemWidget extends StatelessWidget {
  SlideracnoiteItemWidget();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: CustomImageView(
        imagePath: ImageConstant.imgAcnoite202x400,
        height: getVerticalSize(
          202,
        ),
        width: getHorizontalSize(
          400,
        ),
        radius: BorderRadius.circular(
          getHorizontalSize(
            8,
          ),
        ),
      ),
    );
  }
}
