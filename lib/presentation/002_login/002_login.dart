import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:joo_s_application3/core/app_export.dart';
import 'package:joo_s_application3/widgets/custom_button.dart';
import 'package:url_launcher/url_launcher.dart';


class Iphone14ProMaxTwoScreen extends StatelessWidget {
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
                        colors: [
                      ColorConstant.cyan700,
                      ColorConstant.teal900
                    ])),
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 21, top: 6, right: 21, bottom: 0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                              svgPath: ImageConstant.imgMaximize,
                              height: getVerticalSize(12),
                              width: getHorizontalSize(24),
                              margin: getMargin(top: 4),
                              onTap: () {
                                onTapImgMaximize(context);
                              }),
                          CustomImageView(
                              svgPath: ImageConstant.imgGrupo33,
                              height: getVerticalSize(159),
                              width: getHorizontalSize(329),
                              alignment: Alignment.center,
                              margin: getMargin(top: 28)),
                          Padding(
                              padding: getPadding(left: 9, top: 43),
                              child: Text("Faça seu login!",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterBold25)),
                          Padding(
                              padding: getPadding(left: 9, top: 77),
                              child: Text("E-mail",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular16)),
                          Padding(
                              padding: getPadding(top: 15),
                              child: Divider(color: ColorConstant.whiteA700)),
                          Padding(
                              padding: getPadding(left: 9, top: 53, right: 8),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Senha",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular16),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgEye,
                                        height: getVerticalSize(18),
                                        width: getHorizontalSize(24),
                                        margin: getMargin(bottom: 1))
                                  ])),
                          Padding(
                              padding: getPadding(top: 15),
                              child: Divider(color: ColorConstant.whiteA700)),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                  padding: getPadding(top: 30, right: 16),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "Esqueceu sua senha? ",
                                            style: TextStyle(
                                                color: ColorConstant.whiteA700,
                                                fontSize: getFontSize(18),
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w400)),
                                        TextSpan(
                                            text: "Clique aqui",
                                            style: TextStyle(
                                                color: ColorConstant.whiteA700,
                                                fontSize: getFontSize(18),
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w700,
                                                decoration:
                                                    TextDecoration.underline))
                                      ]),
                                      textAlign: TextAlign.left))),
                          CustomButton(
                              height: getVerticalSize(45),
                              text: "Entrar",
                              margin: getMargin(left: 50, top: 58, right: 49),
                              variant: ButtonVariant.FillWhiteA700,
                              onTap: () => onTapEntrar(context),
                              alignment: Alignment.center),
                          Padding(
                              padding: getPadding(left: 9, top: 58),
                              child: Text("Ou faça login com as redes",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular18)),
                          Padding(
                              padding: getPadding(left: 10, top: 17),
                              child: Row(children: [
                                Container(
                                    height: getSize(60),
                                    width: getSize(60),
                                    padding: getPadding(
                                        left: 22,
                                        top: 15,
                                        right: 22,
                                        bottom: 15),
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: fs.Svg(
                                                ImageConstant.imgGrupo129),
                                            fit: BoxFit.cover)),
                                    child: Stack(children: [
                                      CustomImageView(
                                          svgPath: ImageConstant.imgFacebook,
                                          height: getVerticalSize(30),
                                          width: getHorizontalSize(13),
                                          alignment: Alignment.center,
                                          onTap: () {
                                            onTapImgFacebook(context);
                                          })
                                    ])),
                                CustomImageView(
                                    svgPath: ImageConstant.imgClock,
                                    height: getSize(60),
                                    width: getSize(60),
                                    margin: getMargin(left: 10))
                              ])),
                          Align(
                              alignment: Alignment.center,
                              child: GestureDetector(
                                  onTap: () {
                                    onTapTxtAindanopossui(context);
                                  },
                                  child: Padding(
                                      padding: getPadding(top: 62),
                                      child: RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text:
                                                    "Ainda não possui cadastro? ",
                                                style: TextStyle(
                                                    color:
                                                        ColorConstant.whiteA700,
                                                    fontSize: getFontSize(18),
                                                    fontFamily: 'Inter',
                                                    fontWeight:
                                                        FontWeight.w400)),
                                            TextSpan(
                                                text: "Cadastre-se",
                                                style: TextStyle(
                                                    color:
                                                        ColorConstant.whiteA700,
                                                    fontSize: getFontSize(18),
                                                    fontFamily: 'Inter',
                                                    fontWeight: FontWeight.w700,
                                                    decoration: TextDecoration
                                                        .underline))
                                          ]),
                                          textAlign: TextAlign.left))))
                        ])))));
  }

  onTapImgMaximize(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ProMaxFiveScreen);
  }

  onTapEntrar(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ProMaxNineScreen);
  }

  onTapImgFacebook(BuildContext context) async {
    var url = 'https://www.facebook.com/login/';
    if (!await launch(url)) {
      throw 'Could not launch https://www.facebook.com/login/';
    }
  }

  onTapTxtAindanopossui(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ProMaxSixScreen);
  }
}
