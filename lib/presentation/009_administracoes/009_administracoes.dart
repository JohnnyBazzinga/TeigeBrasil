import '../009_administracoes/widgets/gridacnoite_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:joo_s_application3/core/app_export.dart';
import 'package:joo_s_application3/widgets/app_bar/appbar_image.dart';
import 'package:joo_s_application3/widgets/app_bar/appbar_title.dart';
import 'package:joo_s_application3/widgets/app_bar/custom_app_bar.dart';
import '../008_menu/008_menu.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../009_administracoes/009_administracoes.dart';
import 'package:joo_s_application3/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../007_pagina_principal/007_pagina_principal.dart';
import '../013_comercios/013_comercios.dart';
import '../016_feiras/016_feiras.dart';
import '../017_parceiros/017_parceiros.dart';

class Iphone14ProMaxElevenScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
              height: getVerticalSize(
                63,
              ),
              title: Padding(
                padding: getPadding(
                  left: 15,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Administrações",
                        style: TextStyle(
                          color: ColorConstant.gray900,
                          fontSize: getFontSize(
                            25,
                          ),
                          fontFamily: 'Inter',
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              actions: [
                InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return FractionallySizedBox(
                          widthFactor: 1,
                          heightFactor: 1.1,
                          child: Align(
                            alignment: Alignment.topRight,
                            child: FilterDialog2(),
                          ),
                        );
                      },
                    );
                  },
                  child: Padding(
                    padding: getMargin(
                      left: 35,
                      top: 2,
                      right: 19,
                      bottom: 2,
                    ),
                    child: SvgPicture.asset(
                      'assets/images/img_menu.svg',
                      height: getVerticalSize(23),
                      width: getHorizontalSize(32),
                    ),
                  ),
                ),
              ],
            ),


            body: Stack(
                children: [

                SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(top: 35, bottom: 145),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: getPadding(left: 15, right: 15),
                                  child: GridView.builder(
                                      shrinkWrap: true,
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                              mainAxisExtent:
                                                  getVerticalSize(218),
                                              crossAxisCount: 2,
                                              mainAxisSpacing:
                                                  getHorizontalSize(10),
                                              crossAxisSpacing:
                                                  getHorizontalSize(10)),
                                      physics: NeverScrollableScrollPhysics(),
                                      itemCount: 6,
                                      itemBuilder: (context, index) {
                                        return GridacnoiteItemWidget(
                                            onTapColumnacnoite: () =>
                                                onTapColumnacnoite(context));
                                      })),
                              Container(
                                  height: getVerticalSize(217),
                                  width: double.maxFinite,
                                  margin: getMargin(top: 15),
                                  child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                      decoration: AppDecoration
                                                          .outlineGray100
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder8),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgAcnoite,
                                                                height:
                                                                    getVerticalSize(
                                                                        83),
                                                                width:
                                                                    getHorizontalSize(
                                                                        195),
                                                                radius: BorderRadius.only(
                                                                    topLeft: Radius.circular(
                                                                        getHorizontalSize(
                                                                            8)),
                                                                    topRight: Radius
                                                                        .circular(
                                                                            getHorizontalSize(8)))),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left: 9,
                                                                        top:
                                                                            10),
                                                                child: Text(
                                                                    "Águas Claras | RA XX",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterRegular16Cyan900)),
                                                            Container(
                                                                width:
                                                                    getHorizontalSize(
                                                                        142),
                                                                margin:
                                                                    getMargin(
                                                                        left: 9,
                                                                        top: 10,
                                                                        bottom:
                                                                            38),
                                                                child: Text(
                                                                    "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed",
                                                                    maxLines:
                                                                        null,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterRegular14Gray6001))
                                                          ])),
                                                  Container(
                                                      margin:
                                                          getMargin(left: 10),
                                                      decoration: AppDecoration
                                                          .outlineGray100
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder8),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgFotomaryleal632015,
                                                                height:
                                                                    getVerticalSize(
                                                                        83),
                                                                width:
                                                                    getHorizontalSize(
                                                                        195),
                                                                radius: BorderRadius.only(
                                                                    topLeft: Radius.circular(
                                                                        getHorizontalSize(
                                                                            8)),
                                                                    topRight: Radius
                                                                        .circular(
                                                                            getHorizontalSize(8)))),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left: 9,
                                                                        top:
                                                                            10),
                                                                child: Text(
                                                                    "Cruzeiro Velho | RA XI",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterRegular16Cyan900)),
                                                            Container(
                                                                width:
                                                                    getHorizontalSize(
                                                                        142),
                                                                margin:
                                                                    getMargin(
                                                                        left: 9,
                                                                        top: 10,
                                                                        bottom:
                                                                            38),
                                                                child: Text(
                                                                    "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed",
                                                                    maxLines:
                                                                        null,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterRegular14Gray6001))
                                                          ]))
                                                ])),
                                      ])),
                              Padding(
                                  padding:
                                      getPadding(left: 15, top: 15, right: 15),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                            decoration: AppDecoration
                                                .outlineGray100
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder8),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgAcnoite,
                                                      height:
                                                          getVerticalSize(83),
                                                      width: getHorizontalSize(
                                                          195),
                                                      radius: BorderRadius.only(
                                                          topLeft: Radius.circular(
                                                              getHorizontalSize(
                                                                  8)),
                                                          topRight: Radius.circular(
                                                              getHorizontalSize(
                                                                  8)))),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 9, top: 10),
                                                      child: Text(
                                                          "Águas Claras | RA XX",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterBold16Cyan900)),
                                                  Container(
                                                      width: getHorizontalSize(
                                                          142),
                                                      margin: getMargin(
                                                          left: 9,
                                                          top: 10,
                                                          bottom: 38),
                                                      child: Text(
                                                          "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed",
                                                          maxLines: null,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular14Gray6001))
                                                ])),
                                        Container(
                                            margin: getMargin(left: 6),
                                            decoration: AppDecoration
                                                .outlineGray100
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder8),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgFotomaryleal632015,
                                                      height:
                                                          getVerticalSize(83),
                                                      width: getHorizontalSize(
                                                          195),
                                                      radius: BorderRadius.only(
                                                          topLeft: Radius.circular(
                                                              getHorizontalSize(
                                                                  8)),
                                                          topRight: Radius.circular(
                                                              getHorizontalSize(
                                                                  8)))),
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              top: 10),
                                                          child: Text(
                                                              "Cruzeiro Velho | RA XI",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterBold16Cyan900))),
                                                  Container(
                                                      width: getHorizontalSize(
                                                          142),
                                                      margin: getMargin(
                                                          left: 9,
                                                          top: 10,
                                                          bottom: 38),
                                                      child: Text(
                                                          "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed",
                                                          maxLines: null,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular14Gray6001))
                                                ]))
                                      ]))
                            ]))),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          height: 300,
                          width: double.maxFinite,
                          margin: getMargin(top: 735),
                          child: Stack(
                              alignment:
                              Alignment.topCenter,
                              children: [
                                Align(
                                    alignment: Alignment
                                        .bottomCenter,
                                    child: Container(
                                        width: double
                                            .maxFinite,
                                        margin: getMargin(
                                            top: 50),
                                        padding:
                                        getPadding(
                                            left: 21,
                                            top: 10,
                                            right: 21,
                                            bottom:
                                            0),
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: fs.Svg(
                                                    ImageConstant
                                                        .imgGroup327),
                                                fit: BoxFit
                                                    .cover)),
                                        child: Row(
                                            crossAxisAlignment:
                                            CrossAxisAlignment
                                                .end,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      top:
                                                      15),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: [
                                                        InkWell(
                                                          onTap: () {
                                                            Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                builder: (context) => Iphone14ProMaxElevenScreen(),
                                                              ),
                                                            );
                                                          },
                                                          child: CustomImageView(
                                                            svgPath: ImageConstant.imgTrashWhiteA700,
                                                            height: getSize(28),
                                                            width: getSize(28),
                                                            margin: getMargin(left: 32),
                                                          ),
                                                        ),
                                                        Padding(padding: getPadding(top: 8), child: Text("Administrações", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterBold14))
                                                      ])),
                                              Padding(
                                                  padding: getPadding(
                                                      left:
                                                      5,
                                                      top:
                                                      25),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: [
                                                        InkWell(
                                                          onTap: () {
                                                            Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                builder: (context) => Iphone14ProMaxFourteenScreen(),
                                                              ),
                                                            );
                                                          },
                                                          child: CustomImageView(
                                                            svgPath: ImageConstant.imgUser,
                                                            height: getSize(28),
                                                            width: getSize(28),
                                                            margin: getMargin(left: 22),
                                                          ),
                                                        ),                                                       ])),
                                              Spacer(
                                                  flex:
                                                  70),
                                              InkWell(
                                                onTap: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) => Iphone14ProMaxSixteenScreen(),
                                                    ),
                                                  );
                                                },
                                                child: CustomImageView(
                                                  svgPath: ImageConstant.imgComputerWhiteA700,
                                                  height: getSize(28),
                                                  width: getSize(28),
                                                  margin: getMargin(top: 1, bottom: 30),
                                                ),
                                              ),
                                              Spacer(
                                                  flex:
                                                  29),
                                              InkWell(
                                                onTap: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) => Iphone14ProMaxTwentyScreen(),
                                                    ),
                                                  );
                                                },
                                                child: CustomImageView(
                                                  svgPath: ImageConstant.imgVolume,
                                                  height: getSize(28),
                                                  width: getSize(28),
                                                  margin: getMargin(top: 1, right: 17, bottom: 30),
                                                ),
                                              ),
                                            ]))),
                                Align(
                                    alignment: Alignment
                                        .topCenter,
                                    child: Container(
                                        height:
                                        getSize(99),
                                        width:
                                        getSize(99),
                                        padding:
                                        getPadding(
                                            left: 1,
                                            top: 1,
                                            right: 1,
                                            bottom:
                                            0),
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    ImageConstant
                                                        .imgGrupo41),
                                                fit: BoxFit
                                                    .cover)),
                                        child: Stack(
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) => Iphone14ProMaxNineScreen(),
                                                    ),
                                                  );
                                                },
                                                child: CustomImageView(
                                                  imagePath: 'assets/images/logo.png',
                                                  height: getVerticalSize(45),
                                                  width: getHorizontalSize(40),
                                                  margin: getMargin(top: 26, left: 25, bottom: 10),
                                                ),
                                              ),
                                            ])))
                              ])))])));
  }

  onTapColumnacnoite(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ProMaxTwelveScreen);
  }
}
