import 'package:flutter/material.dart';
import 'package:joo_s_application3/core/app_export.dart';
import '../iphone_14_pro_max_one_screen/iphone_14_pro_max_one_screen.dart';

class Iphone14ProMaxZeroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Iphone14ProMaxOneScreen()),
      );
    });

    return SafeArea(
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
              left: 30,
              top: 298,
              right: 30,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomImageView(
                  svgPath: ImageConstant.imgGrupo33,
                  height: getVerticalSize(
                    177,
                  ),
                  width: getHorizontalSize(
                    365,
                  ),
                  margin: getMargin(
                    bottom: 5,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
