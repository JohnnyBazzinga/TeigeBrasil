import 'package:flutter/material.dart';
import 'package:joo_s_application3/core/app_export.dart';
import '../iphone_14_pro_max_four_screen/iphone_14_pro_max_four_screen.dart';

class Iphone14ProMaxThreeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: GestureDetector(
        onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Iphone14ProMaxFourScreen()),
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
              left: 23,
              right: 23,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: getPadding(
                    top: 20,
                  ),
                  child: Text(
                    "Avalie e compartilhe".toUpperCase(),
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterRegular14,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 20,
                  ),
                  child: Text(
                    "Ajude a construir uma ",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterBold25,
                  ),
                ),
                Text(
                  "cidade melhor",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterBold25,
                ),
                Container(
                  height: getVerticalSize(
                    310,
                  ),
                  width: getHorizontalSize(
                    384,
                  ),
                  margin: getMargin(
                    top: 95,
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
                        imagePath: ImageConstant.imgH38ch38bm0014iconset014,
                        height: getVerticalSize(
                          219,
                        ),
                        width: getHorizontalSize(
                          384,
                        ),
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    323,
                  ),
                  margin: getMargin(
                    left: 30,
                    top: 94,
                    right: 29,
                  ),
                  child: Text(
                    "Dê sua opinião sobre as empresas e ajude outras pessoas a encontrar as melhores opções",
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
                height: getVerticalSize(
                  9,
                ),
                width: getHorizontalSize(
                  19,
                ),
                margin: getMargin(
                  left: 4,
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
            ],
          ),
        ),
      ),
    ));
  }
}
