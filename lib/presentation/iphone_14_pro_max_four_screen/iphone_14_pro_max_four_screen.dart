import 'package:flutter/material.dart';
import 'package:joo_s_application3/core/app_export.dart';
import '../001_video_de_entrada/001_video_de_entrada.dart';

class Iphone14ProMaxFourScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: GestureDetector(
        onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Iphone14ProMaxFiveScreen()),
      );
    },
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(
                0,
                0,
              ),
              end: Alignment(
                0,
                0.9,
              ),
              colors: [
                ColorConstant.cyan700,
                ColorConstant.teal900,
              ],
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: getPadding(
              left: 24,
              right: 24,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Fique atualizado".toUpperCase(),
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterRegular14,
                ),
                Padding(
                  padding: getPadding(
                    top: 28,
                  ),
                  child: Text(
                    "Acompanhe as ",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterBold25,
                  ),
                ),
                Text(
                  "novidades",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterBold25,
                ),
                Container(
                  height: getVerticalSize(
                    310,
                  ),
                  width: getHorizontalSize(
                    381,
                  ),
                  margin: getMargin(
                    top: 87,
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: getSize(
                            310,
                          ),
                          width: getSize(
                            310,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.whiteA70063,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                155,
                              ),
                            ),
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgH38ch38bm0014iconset026,
                        height: getVerticalSize(
                          254,
                        ),
                        width: getHorizontalSize(
                          381,
                        ),
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    269,
                  ),
                  margin: getMargin(
                    left: 56,
                    top: 90,
                    right: 55,
                    bottom: 5,
                  ),
                  child: Text(
                    "Fique por dentro das últimas notícias e eventos da cidade",
                    maxLines: null,
                    textAlign: TextAlign.center,
                    style: AppStyle.txtInterRegular20,
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: getPadding(
            left: 193,
            right: 193,
            bottom: 34,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: getSize(
                  9,
                ),
                width: getSize(
                  9,
                ),
                decoration: BoxDecoration(
                  color: ColorConstant.whiteA70075,
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      4,
                    ),
                  ),
                ),
              ),
              Container(
                height: getSize(
                  9,
                ),
                width: getSize(
                  9,
                ),
                margin: getMargin(
                  left: 4,
                ),
                decoration: BoxDecoration(
                  color: ColorConstant.whiteA70075,
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      4,
                    ),
                  ),
                ),
              ),
              Container(
                height: getVerticalSize(
                  9,
                ),
                width: getHorizontalSize(
                  19,
                ),
                margin: getMargin(
                  left: 3,
                ),
                decoration: BoxDecoration(
                  color: ColorConstant.whiteA700,
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      4,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
