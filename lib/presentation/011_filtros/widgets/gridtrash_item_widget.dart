import 'package:flutter/material.dart';
import 'package:joo_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class GridtrashItemWidget extends StatelessWidget {
  GridtrashItemWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 50,
        top: 14,
        right: 50,
        bottom: 14,
      ),
      decoration: AppDecoration.fillGray100.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgTrash,
            height: getSize(
              37,
            ),
            width: getSize(
              37,
            ),
            alignment: Alignment.center,
          ),
          Padding(
            padding: getPadding(
              top: 5,
              bottom: 3,
            ),
            child: Text(
              "Advocacia",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtInterBold16Gray900,
            ),
          ),
        ],
      ),
    );
  }
}
