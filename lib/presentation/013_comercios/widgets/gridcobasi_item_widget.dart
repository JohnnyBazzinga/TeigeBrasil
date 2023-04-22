import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:joo_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class GridcobasiItemWidget extends StatelessWidget {
  GridcobasiItemWidget({this.onTapGrupo});

  VoidCallback? onTapGrupo;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapGrupo!();
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
            Container(
              height: getVerticalSize(
                83,
              ),
              width: getHorizontalSize(
                195,
              ),
              padding: getPadding(
                left: 27,
                top: 24,
                right: 27,
                bottom: 24,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: fs.Svg(
                    ImageConstant.imgGroup9,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImagem2,
                    height: getVerticalSize(
                      33,
                    ),
                    width: getHorizontalSize(
                      140,
                    ),
                    alignment: Alignment.bottomCenter,
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                left: 9,
                top: 9,
              ),
              child: Text(
                "Cobasi",
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
    );
  }
}
