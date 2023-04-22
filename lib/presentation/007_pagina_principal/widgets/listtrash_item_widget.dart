import 'package:flutter/material.dart';
import 'package:joo_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class ListtrashItemWidget extends StatelessWidget {
  ListtrashItemWidget();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        margin: getMargin(
          right: 7,
        ),
        padding: getPadding(
          left: 18,
          top: 12,
          right: 18,
          bottom: 12,
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
                29,
              ),
              width: getSize(
                29,
              ),
              alignment: Alignment.center,
              margin: getMargin(
                top: 2,
              ),
            ),
            Padding(
              padding: getPadding(
                top: 4,
              ),
              child: Text(
                "Advocacia",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterRegular14Gray900,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
