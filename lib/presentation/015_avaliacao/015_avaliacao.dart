import 'package:flutter/material.dart';
import 'package:joo_s_application3/core/app_export.dart';
import 'package:joo_s_application3/widgets/custom_button.dart';
import 'package:joo_s_application3/widgets/custom_icon_button.dart';

class Iphone14ProMaxSeventeenDialog extends StatefulWidget {
  @override
  _Iphone14ProMaxSeventeenDialogState createState() =>
      _Iphone14ProMaxSeventeenDialogState();
}

class _Iphone14ProMaxSeventeenDialogState
    extends State<Iphone14ProMaxSeventeenDialog> {
  int selectedIndex = -1;

  void setSelectedIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: getHorizontalSize(380),
        padding: getPadding(left: 12, top: 15, right: 12, bottom: 15),
        decoration: AppDecoration.fillWhiteA700
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                  svgPath: ImageConstant.imgCloseGray600,
                  height: getSize(20),
                  width: getSize(20),
                  alignment: Alignment.centerRight,
                  onTap: () {
                    onTapImgClose(context);
                  }),
              Padding(
                  padding: getPadding(top: 17),
                  child: Text("Faça uma avaliação",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterBold25Gray9001)),
              Container(
                  width: getHorizontalSize(196),
                  margin: getMargin(top: 29),
                  child: Text("Sua opinião é muito importante para nós!",
                      maxLines: null,
                      textAlign: TextAlign.center,
                      style: AppStyle.txtInterRegular20Gray900)),
              Padding(
                  padding: getPadding(left: 38, top: 38, right: 35),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () => setSelectedIndex(0),
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 4.0,
                                color: selectedIndex == 0
                                    ? ColorConstant.cyan700
                                    : Colors.transparent,
                              ),
                            ),
                            child: CustomImageView(
                                svgPath: ImageConstant.imgMusic,
                                height: getSize(48),
                                width: getSize(48),
                                margin: getMargin(top: 3, bottom: 3)),
                          ),
                        ),
                        GestureDetector(
                          onTap: () => setSelectedIndex(1),
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 4.0,
                                color: selectedIndex == 1
                                    ? ColorConstant.cyan700
                                    : Colors.transparent,
                              ),
                            ),
                            child: CustomImageView(
                                svgPath: ImageConstant.imgClockOrange600,
                                height: getSize(48),
                                width: getSize(48),
                                margin: getMargin(top: 3, bottom: 3)),
                          ),
                        ),
                        GestureDetector(
                          onTap: () => setSelectedIndex(2),
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 4.0,
                                color: selectedIndex == 2
                                    ? ColorConstant.cyan700
                                    : Colors.transparent,
                              ),
                            ),
                            child: CustomImageView(
                                svgPath: ImageConstant.imgVolumeYellow500,
                                height: getSize(48),
                                width: getSize(48),
                                margin: getMargin(top: 3, bottom: 3)),
                          ),
                        ),
                        GestureDetector(
                          onTap: () => setSelectedIndex(3),
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 4.0,
                                color: selectedIndex == 3
                                    ? ColorConstant.cyan700
                                    : Colors.transparent,
                              ),
                            ),
                            child: CustomImageView(
                                svgPath: ImageConstant.imgClockLightGreen500,
                                height: getSize(48),
                                width: getSize(48),
                                margin: getMargin(top: 3, bottom: 3)),
                          ),
                        ),
                        GestureDetector(
                          onTap: () => setSelectedIndex(4),
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 4.0,
                                color: selectedIndex == 4
                                    ? ColorConstant.cyan700
                                    : Colors.transparent,
                              ),
                            ),
                            child: CustomIconButton(
                                height: 56,
                                width: 56,
                                variant: IconButtonVariant.FillGreen500,
                                shape: IconButtonShape.CircleBorder28,
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgDashboardWhiteA700))
                          ),
                        ),


                      ])),
              CustomButton(
                  height: getVerticalSize(45),
                  text: "Avaliar",
                  margin: getMargin(left: 33, top: 47, right: 32, bottom: 25),
                  fontStyle: ButtonFontStyle.InterRegular18WhiteA700)
            ]));
  }

  onTapImgClose(BuildContext context) {
    Navigator.pop(context);
  }
}
