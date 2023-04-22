import 'package:flutter/material.dart';
import 'package:joo_s_application3/core/app_export.dart';
import 'package:joo_s_application3/widgets/custom_button.dart';

class Iphone14ProMaxSixScreen extends StatelessWidget {
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
                        getPadding(left: 21, top: 15, right: 21, bottom: 25),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                              svgPath: ImageConstant.imgMaximize,
                              height: getVerticalSize(12),
                              width: getHorizontalSize(24),
                              margin: getMargin(top: 2),
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
                              padding: getPadding(left: 9, top: 49),
                              child: Text("Cadastre-se abaixo",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterBold25)),
                          Padding(
                              padding: getPadding(left: 9, top: 29),
                              child: Text("Nome",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular16)),
                          Padding(
                              padding: getPadding(top: 15),
                              child: Divider(color: ColorConstant.whiteA700)),
                          Padding(
                              padding: getPadding(left: 9, top: 53, right: 9),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: getPadding(bottom: 2),
                                        child: Text("Senha",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterRegular16)),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgCheckmark,
                                        height: getVerticalSize(21),
                                        width: getHorizontalSize(24))
                                  ])),
                          Padding(
                              padding: getPadding(top: 13),
                              child: Divider(color: ColorConstant.whiteA700)),
                          Padding(
                              padding: getPadding(left: 9, top: 53),
                              child: Text("CPF",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular16)),
                          Padding(
                              padding: getPadding(top: 15),
                              child: Divider(color: ColorConstant.whiteA700)),
                          Padding(
                              padding: getPadding(left: 9, top: 53),
                              child: Text("E-mail",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular16)),
                          Padding(
                              padding: getPadding(top: 15),
                              child: Divider(color: ColorConstant.whiteA700)),
                          CustomButton(
                              height: getVerticalSize(45),
                              text: "Cadastrar",
                              margin: getMargin(left: 50, top: 72, right: 49),
                              variant: ButtonVariant.FillWhiteA700,
                              onTap: () => onTapCadastrar(context),
                              alignment: Alignment.center),
                          Align(
                              alignment: Alignment.center,
                              child: GestureDetector(
                                  onTap: () {
                                    onTapTxtJpossuicadastro(context);
                                  },
                                  child: Padding(
                                      padding: getPadding(top: 57),
                                      child: RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text: "Já possui cadastro? ",
                                                style: TextStyle(
                                                    color:
                                                        ColorConstant.whiteA700,
                                                    fontSize: getFontSize(18),
                                                    fontFamily: 'Inter',
                                                    fontWeight:
                                                        FontWeight.w400)),
                                            TextSpan(
                                                text: "Entre agora",
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

  onTapCadastrar(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ProMaxEightScreen);
  }

  onTapTxtJpossuicadastro(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ProMaxTwoScreen);
  }
}
