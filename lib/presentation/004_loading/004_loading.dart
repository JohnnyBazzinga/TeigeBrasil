import 'package:flutter/material.dart';
import 'package:joo_s_application3/core/app_export.dart';

class Iphone14ProMaxSevenScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: getVerticalSize(
                    100,
                  ),
                  width: getHorizontalSize(
                    132,
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.blueGray100,
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
