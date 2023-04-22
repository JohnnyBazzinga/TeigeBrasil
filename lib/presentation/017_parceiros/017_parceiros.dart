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
import '../011_filtros/011_filtros.dart';
import '../017_parceiros/017_parceiros.dart';
import '../008_menu/008_menu.dart';
import '../iphone_14_pro_max_twentyone_screen/018_parceiro.dart';

class Iphone14ProMaxTwentyScreen extends StatelessWidget {
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
                        text: "Parceiros",
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
              ],
            ),


            body: Stack(
                children: [
                  SingleChildScrollView(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Iphone14ProMaxTwentyoneScreen()),
                          );
                        },
                        child: Container(
                          width: getHorizontalSize(
                            400,
                          ),
                          margin: getMargin(
                            left: 15,
                            top: 50,
                          ),
                          padding: getPadding(
                            left: 11,
                            top: 22,
                            right: 11,
                            bottom: 22,
                          ),
                          decoration: AppDecoration.fillGray100.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder8,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgImagem8,
                                height: getVerticalSize(
                                  49,
                                ),
                                width: getHorizontalSize(
                                  169,
                                ),
                                alignment: Alignment.center,
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 35,
                                ),
                                child: Text(
                                  "Caben",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular16Cyan900,
                                ),
                              ),
                              Container(
                                width: getHorizontalSize(
                                  353,
                                ),
                                margin: getMargin(
                                  top: 12,
                                  right: 24,
                                  bottom: 1,
                                ),
                                child: Text(
                                  "Caixa Beneficente do Corpo de Bombeiros do Distrito Federal",
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
                  Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          height: 300,
                          width: double.maxFinite,
                          margin: getMargin(top: 731),
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
                                                  margin: getMargin(top: 1, right: 1, bottom: 30),
                                                ),
                                              ),

                                              InkWell(
                                                onTap: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) => Iphone14ProMaxSixteenScreen(),
                                                    ),
                                                  );
                                                },
                                                child: Column(
                                                  children: [
                                                    CustomImageView(
                                                      svgPath: ImageConstant.imgVolume,
                                                      height: getSize(28),
                                                      width: getSize(28),
                                                      margin: getMargin(top: 10, left:40),
                                                    ),
                                                    Padding(padding: getPadding(top: 8,left:40), child: Text("Parceiros", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterBold14)),
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
                              ])))])));
  }

  onTapColumnlocation(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ProMaxNineteenScreen);
  }
}
