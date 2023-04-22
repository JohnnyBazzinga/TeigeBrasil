import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:joo_s_application3/core/app_export.dart';
import 'package:joo_s_application3/widgets/app_bar/appbar_image.dart';
import 'package:joo_s_application3/widgets/app_bar/appbar_title.dart';
import 'package:joo_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:joo_s_application3/widgets/custom_button.dart';

import '../../widgets/app_bar/appbar_subtitle_1.dart';
import '../009_administracoes/009_administracoes.dart';
import '../013_comercios/013_comercios.dart';
import '../007_pagina_principal/007_pagina_principal.dart';
import '../016_feiras/016_feiras.dart';
import '../008_menu/008_menu.dart';
import '../011_filtros/011_filtros.dart';
import '../017_parceiros/017_parceiros.dart';

class Iphone14ProMaxTwentyoneScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(84),
                title: Padding(
                    padding: getPadding(left: 15),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          AppbarImage(
                              height: getVerticalSize(12),
                              width: getHorizontalSize(24),
                              svgPath: ImageConstant.imgArrowleft,
                              margin: getMargin(left: 6, right: 47),
                              onTap: () => onTapArrowleft3(context)),
                          AppbarTitle(text: "Caben", margin: getMargin(top: 13))
                        ])),
                actions: [
                  AppbarSubtitle1(
                    text: "Filtro",
                    margin: getMargin(
                      left: 16,
                      top: 30,
                      right: 3,
                      bottom: 2,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return Dialog(
                            child: FractionallySizedBox(
                              widthFactor: 1.3,
                              heightFactor: 1.1,
                              child: FilterDialog(),
                            ),
                          );
                        },
                      );
                    },
                    child: Padding(
                      padding: getMargin(
                        left: 10,
                        top: 3,
                        right: 3,
                      ),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgFilter,
                        height: getVerticalSize(24),
                        width: getHorizontalSize(21),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),


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
                ]),
            body: Stack(
                 children: [
                SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(top: 21, bottom: 145),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      margin: getMargin(left: 15, right: 15),
                                      padding: getPadding(
                                          left: 94,
                                          top: 68,
                                          right: 94,
                                          bottom: 68),
                                      decoration: AppDecoration.outlineGray100
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder8),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgImagem8,
                                                height: getVerticalSize(62),
                                                width: getHorizontalSize(211),
                                                margin: getMargin(top: 4))
                                          ]))),
                              Container(
                                  width: getHorizontalSize(377),
                                  margin:
                                      getMargin(left: 15, top: 19, right: 37),
                                  child: Text(
                                      "Caixa Beneficente do Corpo de Bombeiros do Distrito Federal\n\nAt vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing",
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style:
                                          AppStyle.txtInterRegular14Gray6001)),
                              Padding(
                                  padding: getPadding(left: 14, top: 38),
                                  child: Row(children: [
                                    Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgGettyimages134757811152x52,
                                              height: getSize(52),
                                              width: getSize(52),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(26))),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgGettyimages134757811152x52,
                                              height: getSize(52),
                                              width: getSize(52),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(26)),
                                              margin: getMargin(top: 11))
                                        ]),
                                    Padding(
                                        padding: getPadding(
                                            left: 15, top: 10, bottom: 3),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("Jhenyfer Santos",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterRegular14Gray600),
                                              Padding(
                                                  padding: getPadding(top: 3),
                                                  child: Text("Vice Presidente",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterRegular14Gray600)),
                                              Padding(
                                                  padding: getPadding(top: 25),
                                                  child: Text("Jhenyfer Santos",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterRegular14Gray600)),
                                              Padding(
                                                  padding: getPadding(top: 3),
                                                  child: Text("Presidente",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterRegular14Gray600))
                                            ]))
                                  ])),
                              Container(
                                  height: getVerticalSize(500),
                                  width: double.maxFinite,
                                  margin: getMargin(top: 30),
                                  child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Container(
                                                padding: getPadding(
                                                    left: 15,
                                                    top: 22,
                                                    right: 15,
                                                    bottom: 22),
                                                decoration:
                                                    AppDecoration.fillGray100,
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text("Serviços",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterBold14Cyan70001),
                                                      Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  389),
                                                          margin: getMargin(
                                                              top: 20,
                                                              right: 10,
                                                              bottom: 17),
                                                          child: Text(
                                                              "• At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren.\n\n• At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren.\n\n• At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren.",
                                                              maxLines: null,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterRegular14Gray6001))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                                padding: getPadding(
                                                    left: 15,
                                                    top: 22,
                                                    right: 15,
                                                    bottom: 22),
                                                decoration:
                                                    AppDecoration.fillGray100,
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text("Vantagens",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular14Cyan70001),
                                                      Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  389),
                                                          margin: getMargin(
                                                              top: 20,
                                                              right: 10,
                                                              bottom: 17),
                                                          child: Text(
                                                              "• At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren.\n\n• At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren.\n\n• At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren.",
                                                              maxLines: null,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterRegular14Gray6001))
                                                    ]))),
                                      ])),
                              CustomButton(
                                  height: getVerticalSize(45),
                                  width: getHorizontalSize(289),
                                  text: "Acessar site",
                                  margin: getMargin(top: 33),
                                  fontStyle: ButtonFontStyle.InterBold18,
                                  alignment: Alignment.center)
                            ]))),
                   Align(
                       alignment: Alignment.topCenter,
                       child: Container(
                           height: 300,
                           width: double.maxFinite,
                           margin: getMargin(top: 710),
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
                                                       20),
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
                                                             margin: getMargin(left: 18),
                                                           ),
                                                         ),                                                  ])),
                                               Padding(
                                                   padding: getPadding(
                                                       left:
                                                       4,
                                                       top:
                                                       20),
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
                                                             margin: getMargin(left: 45),
                                                           ),
                                                         ),                                                  ])),
                                               Spacer(
                                                   flex:
                                                   100),
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
                                                 child: Column(
                                                   mainAxisSize: MainAxisSize.min,
                                                   mainAxisAlignment: MainAxisAlignment.center,
                                                   children: [
                                                     CustomImageView(
                                                       svgPath: ImageConstant.imgVolume,
                                                       height: getSize(28),
                                                       width: getSize(28),
                                                       margin: getMargin(top: 10, bottom: 5),
                                                     ),
                                                     Padding(
                                                       padding: getPadding(left: 0, right: 4, bottom: 15),
                                                       child: Text(
                                                         "Parceiros",
                                                         overflow: TextOverflow.ellipsis,
                                                         textAlign: TextAlign.left,
                                                         style: AppStyle.txtInterBold14,
                                                       ),
                                                     ),
                                                   ],
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
                               ])))
                 ]
            )));
  }

  onTapArrowleft3(BuildContext context) {
    Navigator.pop(context);
  }
}
