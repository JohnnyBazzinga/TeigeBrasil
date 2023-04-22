import 'package:flutter_svg/svg.dart';

import '../009_administracoes/009_administracoes.dart';
import '../013_comercios/013_comercios.dart';
import '../007_pagina_principal/007_pagina_principal.dart';
import '../iphone_14_pro_max_nineteen_screen/widgets/gridcobasi1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:joo_s_application3/core/app_export.dart';
import 'package:joo_s_application3/widgets/app_bar/appbar_image.dart';
import 'package:joo_s_application3/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:joo_s_application3/widgets/app_bar/custom_app_bar.dart';

import '../016_feiras/016_feiras.dart';
import '../008_menu/008_menu.dart';
import '../011_filtros/011_filtros.dart';
import '../017_parceiros/017_parceiros.dart';

class Iphone14ProMaxNineteenScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(59),
                leadingWidth: 45,
                leading: AppbarImage(
                    height: getVerticalSize(12),
                    width: getHorizontalSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 21, top: 6, bottom: 6),
                    onTap: () => onTapArrowleft2(context)),
                actions: [
                  AppbarSubtitle1(
                    text: "Filtro",
                    margin: getMargin(
                      left: 16,
                      top: 25,
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
                        padding: getPadding(top: 37, bottom: 125),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(left: 15),
                                      child: Text("Nome da feira aqui",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterRegular25))),
                              Padding(
                                padding: getPadding(left: 15, top: 31, right: 17),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: TextField(
                                        decoration: InputDecoration(
                                          hintText: 'O que você procura?',
                                          hintStyle: AppStyle.txtInterRegular16Gray600,
                                          border: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                    CustomImageView(
                                      svgPath: ImageConstant.imgSearch,
                                      height: getSize(17),
                                      width: getSize(17),
                                      margin: getMargin(bottom: 0),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                  padding: getPadding(top: 0, right:20, left:20),
                                  child: Divider(color: ColorConstant.gray600)),
                              Padding(
                                  padding:
                                      getPadding(left: 15, top: 26, right: 15),
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
                                      itemCount: 4,
                                      itemBuilder: (context, index) {
                                        return Gridcobasi1ItemWidget();
                                      })),
                              Container(
                                  height: getVerticalSize(243),
                                  width: double.maxFinite,
                                  margin: getMargin(top: 18),
                                  child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.topLeft,
                                            child: Container(
                                                margin: getMargin(left: 15),
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
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgNovologopontofrio2021,
                                                          height:
                                                              getVerticalSize(
                                                                  83),
                                                          width:
                                                              getHorizontalSize(
                                                                  195),
                                                          radius: BorderRadius.only(
                                                              topLeft: Radius
                                                                  .circular(
                                                                      getHorizontalSize(
                                                                          8)),
                                                              topRight: Radius
                                                                  .circular(
                                                                      getHorizontalSize(
                                                                          8)))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 9, top: 10),
                                                          child: Text("Ponto",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterBold16Cyan900)),
                                                      Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  142),
                                                          margin: getMargin(
                                                              left: 9, top: 8),
                                                          child: Text(
                                                              "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed",
                                                              maxLines: null,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterRegular14Gray6001)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 9,
                                                              top: 6,
                                                              bottom: 6),
                                                          child: Row(children: [
                                                            Card(
                                                                clipBehavior: Clip
                                                                    .antiAlias,
                                                                elevation: 0,
                                                                margin:
                                                                    EdgeInsets
                                                                        .all(0),
                                                                color: ColorConstant
                                                                    .lightGreen500,
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(getHorizontalSize(
                                                                            14))),
                                                                child:
                                                                    Container(
                                                                        height: getSize(
                                                                            28),
                                                                        width: getSize(
                                                                            28),
                                                                        padding: getPadding(
                                                                            all:
                                                                                1),
                                                                        decoration: AppDecoration
                                                                            .fillLightgreen500
                                                                            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
                                                                        child: Stack(children: [
                                                                          CustomImageView(
                                                                              svgPath: ImageConstant.imgDashboard,
                                                                              height: getSize(25),
                                                                              width: getSize(25),
                                                                              alignment: Alignment.center)
                                                                        ]))),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            11,
                                                                        top: 5,
                                                                        bottom:
                                                                            5),
                                                                child: RichText(
                                                                    text: TextSpan(
                                                                        children: [
                                                                          TextSpan(
                                                                              text: "8.2",
                                                                              style: TextStyle(color: ColorConstant.cyan900, fontSize: getFontSize(14), fontFamily: 'Inter', fontWeight: FontWeight.w400)),
                                                                          TextSpan(
                                                                              text: " / 10",
                                                                              style: TextStyle(color: ColorConstant.gray600, fontSize: getFontSize(14), fontFamily: 'Inter', fontWeight: FontWeight.w400))
                                                                        ]),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left))
                                                          ]))
                                                    ]))),
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
                                                        ),
                                                      ]
                                                  )
                                              ),
                                              Spacer(
                                                  flex:
                                                  70),
                                              Padding(
                                                  padding: getPadding(
                                                      left:
                                                      30,
                                                      top:
                                                      13),
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
                                                                builder: (context) => Iphone14ProMaxSixteenScreen(),
                                                              ),
                                                            );
                                                          },
                                                          child: CustomImageView(
                                                            svgPath: ImageConstant.imgComputerWhiteA700,
                                                            height: getSize(28),
                                                            width: getSize(28),
                                                            margin: getMargin(left: 22),
                                                          ),
                                                        ),
                                                        Padding(padding: getPadding(top: 6,left: 15), child: Text("Feiras", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterBold14))
                                                      ])),
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
                              ])))
                ]

            )));
  }

  onTapArrowleft2(BuildContext context) {
    Navigator.pop(context);
  }
}
