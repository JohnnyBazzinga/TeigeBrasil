import 'package:flutter/material.dart';
import 'package:joo_s_application3/core/app_export.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore: must_be_immutable
class SliderbannerItemWidget extends StatelessWidget {
  SliderbannerItemWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(
        202,
      ),
      width: getHorizontalSize(
        400,
      ),
      margin: getMargin(
        left: 812,
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgBanner,
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
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: getVerticalSize(
                9,
              ),
              margin: getMargin(
                bottom: 9,
              ),
              child: SmoothIndicator(
                offset: 0,
                count: 3,
                axisDirection: Axis.horizontal,
                effect: ScrollingDotsEffect(
                  spacing: 4,
                  activeDotColor: ColorConstant.gray900,
                  dotColor: ColorConstant.gray90075,
                  dotHeight: getVerticalSize(
                    9,
                  ),
                  dotWidth: getHorizontalSize(
                    9,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
