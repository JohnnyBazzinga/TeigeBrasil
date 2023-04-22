import 'package:flutter/material.dart';
import 'package:joo_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class Grupoderolagem1ItemWidget extends StatelessWidget {
  Grupoderolagem1ItemWidget();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          margin: getMargin(
            right: 10,
          ),
          decoration: AppDecoration.outlineGray100.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: EdgeInsets.all(0),
                color: ColorConstant.whiteA700,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: ColorConstant.gray100,
                    width: getHorizontalSize(
                      1,
                    ),
                  ),
                  borderRadius: BorderRadius.only(
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
                child: Container(
                  height: getVerticalSize(
                    83,
                  ),
                  width: getHorizontalSize(
                    169,
                  ),
                  padding: getPadding(
                    all: 27,
                  ),
                  decoration: AppDecoration.outlineGray100.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderTL8,
                  ),
                  child: Stack(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImagem2,
                        height: getVerticalSize(
                          27,
                        ),
                        width: getHorizontalSize(
                          110,
                        ),
                        alignment: Alignment.bottomLeft,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 9,
                  top: 10,
                ),
                child: Text(
                  "Cobasi",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterRegular16Cyan900,
                ),
              ),
              Container(
                width: getHorizontalSize(
                  142,
                ),
                margin: getMargin(
                  left: 9,
                  top: 9,
                ),
                child: Text(
                  "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed",
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterRegular14Gray6001,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 9,
                  top: 6,
                  bottom: 6,
                ),
                child: Row(
                  children: [
                    Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 0,
                      margin: EdgeInsets.all(0),
                      color: ColorConstant.lightGreen500,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            14,
                          ),
                        ),
                      ),
                      child: Container(
                        height: getSize(
                          28,
                        ),
                        width: getSize(
                          28,
                        ),
                        padding: getPadding(
                          all: 1,
                        ),
                        decoration: AppDecoration.fillLightgreen500.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder12,
                        ),
                        child: Stack(
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgDashboard,
                              height: getSize(
                                25,
                              ),
                              width: getSize(
                                25,
                              ),
                              alignment: Alignment.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 11,
                        top: 5,
                        bottom: 5,
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "8.2",
                              style: TextStyle(
                                color: ColorConstant.cyan900,
                                fontSize: getFontSize(
                                  14,
                                ),
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            TextSpan(
                              text: " / 10",
                              style: TextStyle(
                                color: ColorConstant.gray600,
                                fontSize: getFontSize(
                                  14,
                                ),
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
