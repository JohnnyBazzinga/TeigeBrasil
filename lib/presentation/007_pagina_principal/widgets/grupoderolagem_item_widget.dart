import 'package:flutter/material.dart';
import 'package:joo_s_application3/core/app_export.dart';
import 'package:joo_s_application3/presentation/010_administracao/010_administracao.dart';

// ignore: must_be_immutable
class GrupoderolagemItemWidget extends StatelessWidget {
  GrupoderolagemItemWidget();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Iphone14ProMaxTwelveScreen(),
              ),
            );
            },
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
                CustomImageView(
                  imagePath: ImageConstant.imgAcnoite,
                  height: getVerticalSize(
                    83,
                  ),
                  width: getHorizontalSize(
                    169,
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
                Container(
                  width: getHorizontalSize(
                    140,
                  ),
                  margin: getMargin(
                    left: 9,
                    top: 6,
                  ),
                  child: Text(
                    "Águas Claras | RA XX ",
                    maxLines: null,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterBold16,
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    142,
                  ),
                  margin: getMargin(
                    left: 9,
                    top: 14,
                    bottom: 16,
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
        ),
      ),
    );
  }
}

