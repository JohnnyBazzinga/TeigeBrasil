import 'package:flutter/material.dart';
import 'package:joo_s_application3/core/app_export.dart';
import '../iphone_14_pro_max_three_screen/iphone_14_pro_max_three_screen.dart';

class Iphone14ProMaxOneScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: GestureDetector(
            onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Iphone14ProMaxThreeScreen()),
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
              left: 5,
              right: 5,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Conheça a cidade melhor".toUpperCase(),
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterRegular14,
                ),
                Padding(
                  padding: getPadding(
                    top: 34,
                  ),
                  child: Text(
                    "Descubra as melhores empresas e ",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterBold25,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(
                      left: 137,
                    ),
                    child: Text(
                      "comércios",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterBold25,
                    ),
                  ),
                ),
                Container(
                  height: getVerticalSize(
                    310,
                  ),
                  width: getHorizontalSize(
                    395,
                  ),
                  margin: getMargin(
                    top: 81,
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
                        imagePath: ImageConstant.imgH38ch38bm0014iconset017,
                        height: getVerticalSize(
                          238,
                        ),
                        width: getHorizontalSize(
                          395,
                        ),
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    278,
                  ),
                  margin: getMargin(
                    top: 89,
                    bottom: 7,
                  ),
                  child: Text(
                    "Encontre as melhores opções de negócios em Brasília",
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
                height: getVerticalSize(
                  9,
                ),
                width: getHorizontalSize(
                  19,
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
              Container(
                height: getSize(
                  9,
                ),
                width: getSize(
                  9,
                ),
                margin: getMargin(
                  left: 3,
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
            ],
          ),
        ),
      ),
    ));
  }
}
