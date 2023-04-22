import 'package:flutter/material.dart';
import 'package:joo_s_application3/core/app_export.dart';
import 'package:joo_s_application3/widgets/custom_checkbox.dart';

class FilterDialog2 extends StatefulWidget {
  @override
  Iphone14ProMaxTenDraweritem createState() => Iphone14ProMaxTenDraweritem();
}

class Iphone14ProMaxTenDraweritem extends State<FilterDialog2> {

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
            width: getHorizontalSize(344),
            padding: getPadding(left: 17, top: 45, right: 20, bottom: 80),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment(0, 0),
                    end: Alignment(0, 0.9),
                    colors: [
                      ColorConstant.cyan700,
                      ColorConstant.teal900
                    ])),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: CustomImageView(
                      svgPath: ImageConstant.imgClose,
                      height: getSize(20),
                      width: getSize(20),
                      alignment: Alignment.centerRight,
                    ),
                  ),
                  CustomImageView(
                      imagePath: 'assets/images/img_grupo33.png',
                      height: 82,
                      width: 170,
                      alignment: Alignment.topCenter),
                  Spacer(),
                  CustomImageView(
                      imagePath: ImageConstant.imgGettyimages1347578111,
                      height: getSize(78),
                      width: getSize(78),
                      radius: BorderRadius.circular(getHorizontalSize(39)),
                      alignment: Alignment.center),
                  Align(
                      alignment: Alignment.center,
                      child: Padding(
                          padding: getPadding(top: 10),
                          child: Text("Olá, Jhenyfer",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular23))),
                  Padding(
                      padding: getPadding(left: 24, top: 38),
                      child: Row(children: [
                        CustomImageView(
                            svgPath: 'assets/images/img_grid.svg',
                            height: getSize(18),
                            width: getSize(18),
                            margin: getMargin(bottom: 3)),
                        GestureDetector(
                            onTap: () {
                              onTapTxtHome(context);
                            },
                            child: Padding(
                                padding: getPadding(left: 13),
                                child: Text("Home",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular18)))
                      ])),
                  Padding(
                      padding: getPadding(left: 24, top: 38),
                      child: Row(children: [
                        CustomImageView(
                            svgPath: ImageConstant.imgTrashWhiteA70018x18,
                            height: getSize(18),
                            width: getSize(18),
                            margin: getMargin(bottom: 3)),
                        GestureDetector(
                            onTap: () {
                              onTapTxtAdministraes(context);
                            },
                            child: Padding(
                                padding: getPadding(left: 13),
                                child: Text("Administrações",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular18)))
                      ])),
                  Padding(
                      padding: getPadding(left: 24, top: 39),
                      child: Row(children: [
                        CustomImageView(
                            svgPath: ImageConstant.imgUserWhiteA700,
                            height: getSize(18),
                            width: getSize(18),
                            margin: getMargin(top: 2, bottom: 1)),
                        GestureDetector(
                            onTap: () {
                              onTapTxtComrcios(context);
                            },
                            child: Padding(
                                padding: getPadding(left: 13),
                                child: Text("Comércios",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular18)))
                      ])),
                  Padding(
                      padding: getPadding(left: 24, top: 42),
                      child: Row(children: [
                        CustomImageView(
                            svgPath: ImageConstant.imgComputerWhiteA70018x18,
                            height: getSize(18),
                            width: getSize(18),
                            margin: getMargin(top: 2, bottom: 1)),
                        GestureDetector(
                            onTap: () {
                              onTapTxtFeiras(context);
                            },
                            child: Padding(
                                padding: getPadding(left: 13),
                                child: Text("Feiras",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular18)))
                      ])),
                  Padding(
                      padding: getPadding(left: 24, top: 45),
                      child: Row(children: [
                        CustomImageView(
                            svgPath: ImageConstant.imgVolumeWhiteA700,
                            height: getSize(18),
                            width: getSize(18),
                            margin: getMargin(top: 2, bottom: 1)),
                        GestureDetector(
                            onTap: () {
                              onTapTxtParceiros(context);
                            },
                            child: Padding(
                                padding: getPadding(left: 13),
                                child: Text("Parceiros",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular18)))
                      ])),
                  Padding(
                      padding: getPadding(left: 26, top: 41),
                      child: Row(children: [
                        CustomImageView(
                            svgPath: ImageConstant.imgUserWhiteA70018x13,
                            height: getVerticalSize(18),
                            width: getHorizontalSize(13),
                            margin: getMargin(top: 2, bottom: 1)),
                        Padding(
                            padding: getPadding(left: 15),
                            child: Text("Meu Perfil",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterRegular18))
                      ])),
                  Padding(
                      padding: getPadding(left: 26, top: 41),
                      child: Row(children: [
                        CustomImageView(
                            imagePath: 'assets/images/logo.png',
                            height: getVerticalSize(25),
                            width: getHorizontalSize(20),
                            margin: getMargin(top: 2, bottom: 1)),
                        Padding(
                            padding: getPadding(left: 10),
                            child: Text("A Teige Brasil",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterRegular18))
                      ])),
                  Padding(
                      padding: getPadding(left: 24, top: 96, bottom: 42),
                      child: Row(children: [
                        CustomImageView(
                            svgPath: ImageConstant.imgCut,
                            height: getSize(18),
                            width: getSize(18),
                            margin: getMargin(top: 1, bottom: 1)),
                        GestureDetector(
                            onTap: () {
                              onTapTxtSair(context);
                            },
                            child: Padding(
                                padding: getPadding(left: 12),
                                child: Text("Sair",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular18)))
                      ]))
                ])));
  }
  onTapTxtHome(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ProMaxNineScreen);
  }


  onTapTxtAdministraes(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ProMaxElevenScreen);
  }

  onTapTxtComrcios(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ProMaxFourteenScreen);
  }

  onTapTxtFeiras(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ProMaxSixteenScreen);
  }

  onTapTxtParceiros(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ProMaxTwentyScreen);
  }

  onTapTxtSair(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ProMaxFiveScreen);
  }
}
