import 'package:flutter/material.dart';
import 'package:joo_s_application3/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get outlineGray100 => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          color: ColorConstant.gray100,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get gradientCyan700Teal900 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0,
            0,
          ),
          end: Alignment(
            0,
            0,
          ),
          colors: [
            ColorConstant.cyan700,
            ColorConstant.teal900,
          ],
        ),
      );
  static BoxDecoration get fillRed400 => BoxDecoration(
        color: ColorConstant.red400,
      );
  static BoxDecoration get fillLightgreen500 => BoxDecoration(
        color: ColorConstant.lightGreen500,
      );
  static BoxDecoration get fillGray300 => BoxDecoration(
        color: ColorConstant.gray300,
      );
  static BoxDecoration get fillGray100 => BoxDecoration(
        color: ColorConstant.gray100,
      );
  static BoxDecoration get txtFillCyan70001 => BoxDecoration(
        color: ColorConstant.cyan70001,
      );
  static BoxDecoration get gradientCyan7009dTeal9009d => BoxDecoration(
        color: ColorConstant.blueGray100,
        gradient: LinearGradient(
          begin: Alignment(
            0,
            0,
          ),
          end: Alignment(
            0,
            0,
          ),
          colors: [
            ColorConstant.cyan7009d,
            ColorConstant.teal9009d,
          ],
        ),
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder8 = BorderRadius.circular(
    getHorizontalSize(
      8,
    ),
  );

  static BorderRadius roundedBorder12 = BorderRadius.circular(
    getHorizontalSize(
      12,
    ),
  );

  static BorderRadius roundedBorder3 = BorderRadius.circular(
    getHorizontalSize(
      3,
    ),
  );

  static BorderRadius txtRoundedBorder11 = BorderRadius.circular(
    getHorizontalSize(
      11,
    ),
  );

  static BorderRadius customBorderTL8 = BorderRadius.only(
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
  );

  static BorderRadius circleBorder26 = BorderRadius.circular(
    getHorizontalSize(
      26,
    ),
  );

  static BorderRadius circleBorder39 = BorderRadius.circular(
    getHorizontalSize(
      39,
    ),
  );
}
