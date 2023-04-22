import 'package:flutter/material.dart';
import 'package:joo_s_application3/core/app_export.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class ListclockItemWidget extends StatelessWidget {
  ListclockItemWidget();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              svgPath: ImageConstant.imgClockGray900,
              height: getSize(
                24,
              ),
              width: getSize(
                24,
              ),
            ),
            Padding(
              padding: getPadding(
                left: 7,
                top: 3,
                bottom: 30,
              ),
              child: Text(
                "08h00 - 17h00",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterRegular14Gray600,
              ),
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                launch("tel:61 0000-0000");
              },
              child: Row(
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgCall,
                    height: getSize(23),
                    width: getSize(23),
                    margin: getMargin(top: 1),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 16,
                      top: 3,
                      bottom: 4,
                    ),
                    child: Text(
                      "61 0000-0000",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterRegular14Gray600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                launch("mailto:mail@mail.com.br");
              },
              child: Row(
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgEnvelope,
                    height: getSize(24),
                    width: getSize(24),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 7,
                      top: 3,
                      bottom: 4,
                    ),
                    child: Text(
                      "mail@mail.com.br",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterRegular14Gray600,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            CustomImageView(
              svgPath: ImageConstant.imgCameraGray900,
              height: getSize(
                23,
              ),
              width: getSize(
                23,
              ),
              margin: getMargin(
                top: 1,
                right: 20,
              ),
              onTap: () {
                launch("https://www.example.com");
              },
            ),
            CustomImageView(
              svgPath: ImageConstant.imgFacebookGray900,
              height: getSize(
                23,
              ),
              width: getSize(
                23,
              ),
              margin: getMargin(
                top: 1,
                right: 20,
              ),
              onTap: () {
                launch("https://www.example.com");
              },
            ),
            CustomImageView(
              svgPath: ImageConstant.imgYoutube2,
              height: getSize(
                23,
              ),
              width: getSize(
                23,
              ),
              margin: getMargin(
                top: 1,
                right: 15,
              ),
              onTap: () {
                launch("https://www.example.com");
              },
            ),
          ],
        ),
      ],
    );
  }
}
