import 'package:flutter/material.dart';
import 'package:joo_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class GridacnoiteItemWidget extends StatelessWidget {
  GridacnoiteItemWidget({this.onTapColumnacnoite});

  VoidCallback? onTapColumnacnoite;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapColumnacnoite!();
      },
      child: Container(
        decoration: AppDecoration.outlineGray100.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgAcnoite,
              height: getVerticalSize(
                83,
              ),
              width: getHorizontalSize(
                195,
              ),
              radius: BorderRadius.only(
                topLeft: Radius.circular(
                  getHorizontalSize(
                    8,
                  ),
                ),
                topRight: Radius.circular(
                  getHorizontalSize(
                    8,
                  ),
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                left: 9,
                top: 10,
              ),
              child: Text(
                "Águas Claras | RA XX",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterBold16Cyan900,
              ),
            ),
            Container(
              width: getHorizontalSize(
                142,
              ),
              margin: getMargin(
                left: 9,
                top: 10,
                bottom: 38,
              ),
              child: Text(
                "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed",
                maxLines: null,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterRegular14Gray6001,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
