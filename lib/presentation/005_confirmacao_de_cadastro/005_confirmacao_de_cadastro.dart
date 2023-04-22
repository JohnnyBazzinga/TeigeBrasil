import 'package:flutter/material.dart';
import 'package:joo_s_application3/core/app_export.dart';
import 'package:joo_s_application3/widgets/custom_button.dart';

class Iphone14ProMaxEightScreen extends StatelessWidget {
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
                        begin: Alignment(0, 0),
                        end: Alignment(0, 0.9),
                        colors: [ColorConstant.cyan700, ColorConstant.teal900]),
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgIphone14promax),
                        fit: BoxFit.cover)),
                child: Container(
                    width: double.maxFinite,
                    padding: getPadding(left: 53, right: 53),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              width: double.maxFinite,
                              child: Container(
                                  margin: getMargin(bottom: 5),
                                  padding: getPadding(
                                      left: 14, top: 6, right: 14, bottom: 6),
                                  decoration: AppDecoration.fillWhiteA700
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder12),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                            height: getSize(232),
                                            width: getSize(232),
                                            margin: getMargin(left: 40),
                                            child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.topRight,
                                                      child: Container(
                                                          height: getSize(192),
                                                          width: getSize(192),
                                                          margin: getMargin(
                                                              top: 13,
                                                              right: 10),
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  ColorConstant
                                                                      .gray100,
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      getHorizontalSize(
                                                                          96))))),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgH45bm0002hands001,
                                                      height: getSize(232),
                                                      width: getSize(232),
                                                      alignment:
                                                          Alignment.center)
                                                ])),
                                        Container(
                                            width: getHorizontalSize(288),
                                            margin: getMargin(right: 6),
                                            child: Text(
                                                "Cadastro realizado com \nsucesso!",
                                                maxLines: null,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtInterBold25Gray900)),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                width: getHorizontalSize(227),
                                                margin: getMargin(
                                                    left: 34,
                                                    top: 26,
                                                    right: 33),
                                                child: Text(
                                                    "Agora você pode aproveitar o Teige Brasil",
                                                    maxLines: null,
                                                    textAlign: TextAlign.center,
                                                    style: AppStyle
                                                        .txtInterRegular20Gray900))),
                                        CustomButton(
                                            height: getVerticalSize(45),
                                            text: "Acessar",
                                            margin: getMargin(
                                                left: 3,
                                                top: 30,
                                                right: 2,
                                                bottom: 14),
                                            fontStyle: ButtonFontStyle
                                                .InterRegular18WhiteA700,
                                            onTap: () => onTapAcessar(context))
                                      ])))
                        ])))));
  }

  onTapAcessar(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ProMaxNineScreen);
  }
}
