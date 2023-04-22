import 'package:joo_s_application3/presentation/014_comercio/014_comercio.dart';
import 'package:joo_s_application3/presentation/iphone_14_pro_max_nineteen_screen/iphone_14_pro_max_nineteen_screen.dart';
import 'package:joo_s_application3/presentation/iphone_14_pro_max_twentyone_screen/018_parceiro.dart';
import '../007_pagina_principal/widgets/grupoderolagem_item_widget.dart';
import '../007_pagina_principal/widgets/listtrash_item_widget.dart';
import '../007_pagina_principal/widgets/sliderbanner_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:joo_s_application3/core/app_export.dart';
import 'package:joo_s_application3/widgets/app_bar/appbar_image.dart';
import 'package:joo_s_application3/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:joo_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../011_filtros/011_filtros.dart';
import '../009_administracoes/009_administracoes.dart';
import '../008_menu/008_menu.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../013_comercios/013_comercios.dart';
import '../016_feiras/016_feiras.dart';
import '../017_parceiros/017_parceiros.dart';

class Iphone14ProMaxNineScreen extends StatelessWidget {
  int silderIndex = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
                    text: "Olá, ",
                    style: TextStyle(
                      color: ColorConstant.gray900,
                      fontSize: getFontSize(
                        25,
                      ),
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextSpan(
                    text: "Jhenyfer",
                    style: TextStyle(
                      color: ColorConstant.gray900,
                      fontSize: getFontSize(
                        25,
                      ),
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
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
                  top: 20,
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
                child: Padding(
                  padding: getPadding(
                    top: 33,
                    bottom: 5,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: getVerticalSize(
                          79,
                        ),
                        child: ListView.separated(
                          padding: getPadding(
                            left: 15,
                          ),
                          scrollDirection: Axis.horizontal,
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              height: getVerticalSize(
                                7,
                              ),
                            );
                          },
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return ListtrashItemWidget();
                          },
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: getPadding(
                          left: 15,
                          top: 25,
                        ),
                        child: Container(
                          height: getVerticalSize(
                            202,
                          ),
                          width: getHorizontalSize(
                            400,
                          ),
                          margin: getMargin(
                            left: 1,
                          ),
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              CarouselSlider(
                                items: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgBanner,
                                    height: getVerticalSize(
                                      202,
                                    ),
                                    width: getHorizontalSize(
                                      400,
                                    ),
                                    radius: BorderRadius.circular(
                                      getHorizontalSize(
                                        8,
                                      ),
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgBanner, // imagem de exemplo
                                    height: getVerticalSize(
                                      202,
                                    ),
                                    width: getHorizontalSize(
                                      400,
                                    ),
                                    radius: BorderRadius.circular(
                                      getHorizontalSize(
                                        8,
                                      ),
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgBanner, // imagem de exemplo
                                    height: getVerticalSize(
                                      202,
                                    ),
                                    width: getHorizontalSize(
                                      400,
                                    ),
                                    radius: BorderRadius.circular(
                                      getHorizontalSize(
                                        8,
                                      ),
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                ],
                                options: CarouselOptions(
                                  height: getVerticalSize(
                                    202,
                                  ),
                                  aspectRatio: 16/9,
                                  viewportFraction: 1,
                                  autoPlay: true,
                                  autoPlayInterval: Duration(seconds: 3),
                                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                                  autoPlayCurve: Curves.fastOutSlowIn,
                                  enlargeCenterPage: true,
                                ),
                              ),

                            ],
                          ),

                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 15,
                          top: 56,
                          right: 14,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgTrashGray900,
                              height: getSize(
                                18,
                              ),
                              width: getSize(
                                18,
                              ),
                              margin: getMargin(
                                bottom: 3,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 9,
                              ),
                              child: Text(
                                "Administrações",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterBold18,
                              ),
                            ),
                            Spacer(),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Iphone14ProMaxElevenScreen(),
                                  ),
                                );                              },
                              child: Padding(
                                padding: getPadding(
                                  top: 1,
                                  bottom: 3,
                                ),
                                child: Text(
                                  "Ver todos",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular14Gray600.copyWith(
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          height: getVerticalSize(
                            226,
                          ),
                          child: ListView.separated(
                            padding: getPadding(
                              left: 15,
                              top: 9,
                            ),
                            scrollDirection: Axis.horizontal,
                            separatorBuilder: (context, index) {
                              return SizedBox(
                                height: getVerticalSize(
                                  10,
                                ),
                              );
                            },
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return GrupoderolagemItemWidget();
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 15,
                          top: 41,
                          right: 14,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgCar,
                              height: getSize(
                                18,
                              ),
                              width: getSize(
                                18,
                              ),
                              margin: getMargin(
                                top: 2,
                                bottom: 1,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 9,
                              ),
                              child: Text(
                                "Parceiros",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterBold18,
                              ),
                            ),
                            Spacer(),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Iphone14ProMaxTwentyScreen(),
                                  ),
                                );                              },
                              child: Padding(
                                padding: getPadding(
                                  top: 1,
                                  bottom: 3,
                                ),
                                child: Text(
                                  "Ver todos",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular14Gray600.copyWith(
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: getVerticalSize(
                          202,
                        ),
                        width: double.maxFinite,
                        margin: getMargin(
                          top: 7,
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Iphone14ProMaxTwentyoneScreen(),
                              ),
                            );                              },
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: getVerticalSize(
                                    202,
                                  ),
                                  width: getHorizontalSize(
                                    391,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.centerLeft,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgImagem10,
                                        height: getVerticalSize(
                                          290,
                                        ),
                                        width: getHorizontalSize(
                                          236,
                                        ),
                                        radius: BorderRadius.circular(
                                          getHorizontalSize(
                                            3,
                                          ),
                                        ),
                                        alignment: Alignment.centerRight,
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                          padding: getPadding(
                                            left: 14,
                                            top: 61,
                                            right: 14,
                                            bottom: 55,
                                          ),
                                          decoration:
                                          AppDecoration.fillRed400.copyWith(
                                            borderRadius:
                                            BorderRadiusStyle.roundedBorder3,
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                imagePath: ImageConstant.imgImagem1,
                                                height: getVerticalSize(
                                                  38,
                                                ),
                                                width: getHorizontalSize(
                                                  131,
                                                ),
                                                radius: BorderRadius.circular(
                                                  getHorizontalSize(
                                                    3,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width: getHorizontalSize(
                                                  124,
                                                ),
                                                margin: getMargin(
                                                  top: 15,
                                                ),
                                                child: Text(
                                                  "Qualidade de Vida, Saúde e Lazer",
                                                  maxLines: null,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterRegular14WhiteA700,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )

                      ),
                      Padding(
                        padding: getPadding(
                          left: 15,
                          top: 44,
                          right: 14,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgShop,
                              height: getSize(
                                18,
                              ),
                              width: getSize(
                                18,
                              ),
                              margin: getMargin(
                                top: 1,
                                bottom: 2,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 8,
                              ),
                              child: Text(
                                "Comércios",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterBold18,
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: getPadding(
                                top: 2,
                                bottom: 2,
                              ),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Iphone14ProMaxFourteenScreen(),
                                    ),
                                  );
                                  },
                                child: Text(
                                  "Ver todos",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular14Gray600.copyWith(
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: getPadding(
                          left: 15,
                          top: 12,
                        ),
                        child: IntrinsicWidth(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                              onTap: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(
                        builder: (context) => Iphone14ProMaxFifteenScreen(),
                        ),
                        );
                        },
                          child: Container(
                                decoration: AppDecoration.outlineGray100.copyWith(
                                  borderRadius: BorderRadiusStyle.roundedBorder8,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Card(
                                      clipBehavior: Clip.antiAlias,
                                      elevation: 0,
                                      margin: EdgeInsets.all(0),
                                      color: ColorConstant.whiteA700,
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          color: ColorConstant.gray100,
                                          width: getHorizontalSize(
                                            1,
                                          ),
                                        ),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(
                                            getHorizontalSize(
                                              8,
                                            ),
                                          ),
                                          topRight: Radius.circular(
                                            getHorizontalSize(
                                              8,
                                            ),
                                          ),
                                        ),
                                      ),
                                      child: Container(
                                        height: getVerticalSize(
                                          83,
                                        ),
                                        width: getHorizontalSize(
                                          169,
                                        ),
                                        padding: getPadding(
                                          all: 27,
                                        ),
                                        decoration:
                                        AppDecoration.outlineGray100.copyWith(
                                          borderRadius:
                                          BorderRadiusStyle.customBorderTL8,
                                        ),
                                        child: Stack(
                                          children: [
                                            CustomImageView(
                                              imagePath: ImageConstant.imgImagem2,
                                              height: getVerticalSize(
                                                27,
                                              ),
                                              width: getHorizontalSize(
                                                110,
                                              ),
                                              alignment: Alignment.bottomLeft,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),

                                    Padding(
                                      padding: getPadding(
                                        left: 9,
                                        top: 9,
                                      ),
                                      child: Text(
                                        "Cobasi",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterBold16Cyan900,
                                      ),
                                    ),
                                    Container(
                                      width: getHorizontalSize(
                                        142,
                                      ),
                                      margin: getMargin(
                                        left: 9,
                                        top: 11,
                                        bottom: 38,
                                      ),
                                      child: Text(
                                        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed",
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular14Gray6001,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Iphone14ProMaxFifteenScreen(),
                              ),
                            );
                          },
                          child: Container(
                                margin: getMargin(
                                  left: 10,
                                ),
                                decoration: AppDecoration.outlineGray100.copyWith(
                                  borderRadius: BorderRadiusStyle.roundedBorder8,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                      imagePath:
                                      ImageConstant.imgNovologopontofrio2021,
                                      height: getVerticalSize(
                                        83,
                                      ),
                                      width: getHorizontalSize(
                                        169,
                                      ),
                                      radius: BorderRadius.only(
                                        topLeft: Radius.circular(
                                          getHorizontalSize(
                                            8,
                                          ),
                                        ),
                                        topRight: Radius.circular(
                                          getHorizontalSize(
                                            8,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 9,
                                        top: 10,
                                      ),
                                      child: Text(
                                        "Ponto",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterBold16Cyan900,
                                      ),
                                    ),
                                    Container(
                                      width: getHorizontalSize(
                                        142,
                                      ),
                                      margin: getMargin(
                                        left: 9,
                                        top: 10,
                                        bottom: 38,
                                      ),
                                      child: Text(
                                        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed",
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular14Gray6001,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Iphone14ProMaxFifteenScreen(),
                              ),
                            );
                            },
                          child: Container(
                                margin: getMargin(
                                  left: 10,
                                ),
                                decoration: AppDecoration.outlineGray100.copyWith(
                                  borderRadius: BorderRadiusStyle.roundedBorder8,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Card(
                                      clipBehavior: Clip.antiAlias,
                                      elevation: 0,
                                      margin: EdgeInsets.all(0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(
                                            getHorizontalSize(
                                              8,
                                            ),
                                          ),
                                          topRight: Radius.circular(
                                            getHorizontalSize(
                                              8,
                                            ),
                                          ),
                                        ),
                                      ),
                                      child: Container(
                                        height: getVerticalSize(
                                          83,
                                        ),
                                        width: getHorizontalSize(
                                          169,
                                        ),
                                        padding: getPadding(
                                          top: 29,
                                          bottom: 29,
                                        ),
                                        decoration: AppDecoration
                                            .gradientCyan700Teal900
                                            .copyWith(
                                          borderRadius:
                                          BorderRadiusStyle.customBorderTL8,
                                        ),
                                        child: Stack(
                                          children: [
                                            CustomImageView(
                                              svgPath: ImageConstant.imgLocation,
                                              height: getSize(
                                                24,
                                              ),
                                              width: getSize(
                                                24,
                                              ),
                                              alignment: Alignment.center,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: getHorizontalSize(
                                        151,
                                      ),
                                      margin: getMargin(
                                        top: 9,
                                      ),
                                      child: Text(
                                        "Lorem ipsum dolor sit amet",
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterBold16,
                                      ),
                                    ),
                                    Container(
                                      width: getHorizontalSize(
                                        151,
                                      ),
                                      margin: getMargin(
                                        top: 13,
                                        bottom: 16,
                                      ),
                                      child: Text(
                                        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed",
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular14Gray6001,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 15,
                          top: 35,
                          right: 14,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgCamera,
                              height: getSize(
                                18,
                              ),
                              width: getSize(
                                18,
                              ),
                              margin: getMargin(
                                bottom: 3,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 8,
                              ),
                              child: Text(
                                "Feiras",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterBold18,
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: getPadding(
                                top: 2,
                                bottom: 2,
                              ),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Iphone14ProMaxSixteenScreen(),
                                    ),
                                  );
                                },
                                child: Text(
                                  "Ver todos",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular14Gray600.copyWith(
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: getPadding(
                          left: 15,
                          top: 10,
                          bottom: 140,
                        ),
                        child: IntrinsicWidth(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Iphone14ProMaxNineteenScreen(),
                                  ),
                                );
                              },
                          child: Container(
                                decoration: AppDecoration.outlineGray100.copyWith(
                                  borderRadius: BorderRadiusStyle.roundedBorder8,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Card(
                                      clipBehavior: Clip.antiAlias,
                                      elevation: 0,
                                      margin: EdgeInsets.all(0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(
                                            getHorizontalSize(
                                              8,
                                            ),
                                          ),
                                          topRight: Radius.circular(
                                            getHorizontalSize(
                                              8,
                                            ),
                                          ),
                                        ),
                                      ),
                                      child: Container(
                                        height: getVerticalSize(
                                          83,
                                        ),
                                        width: getHorizontalSize(
                                          169,
                                        ),
                                        padding: getPadding(
                                          top: 29,
                                          bottom: 29,
                                        ),
                                        decoration: AppDecoration
                                            .gradientCyan700Teal900
                                            .copyWith(
                                          borderRadius:
                                          BorderRadiusStyle.customBorderTL8,
                                        ),
                                        child: Stack(
                                          children: [
                                            CustomImageView(
                                              svgPath: ImageConstant.imgLocation,
                                              height: getSize(
                                                24,
                                              ),
                                              width: getSize(
                                                24,
                                              ),
                                              alignment: Alignment.center,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        width: getHorizontalSize(
                                          146,
                                        ),
                                        margin: getMargin(
                                          top: 9,
                                        ),
                                        child: Text(
                                          "Lorem ipsum dolor sit amet",
                                          maxLines: null,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterBold16,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: getHorizontalSize(
                                        142,
                                      ),
                                      margin: getMargin(
                                        left: 9,
                                        top: 13,
                                        bottom: 16,
                                      ),
                                      child: Text(
                                        "a ipsum dolor sit amet, consetetur sadipscing elitr, sed",
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular14Gray6001,
                                      ),
                                    ),
                                  ],
                                ),
                                ),
                              ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Iphone14ProMaxNineteenScreen(),
                              ),
                            );
                          },
                          child: Container(
                                margin: getMargin(
                                  left: 10,
                                ),
                                decoration: AppDecoration.outlineGray100.copyWith(
                                  borderRadius: BorderRadiusStyle.roundedBorder8,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgImagem3,
                                      height: getVerticalSize(
                                        86,
                                      ),
                                      width: getHorizontalSize(
                                        169,
                                      ),
                                      radius: BorderRadius.circular(
                                        getHorizontalSize(
                                          2,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        width: getHorizontalSize(
                                          146,
                                        ),
                                        margin: getMargin(
                                          top: 6,
                                        ),
                                        child: Text(
                                          "Lorem ipsum dolor sit amet",
                                          maxLines: null,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterBold16,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: getHorizontalSize(
                                        142,
                                      ),
                                      margin: getMargin(
                                        left: 9,
                                        top: 13,
                                        bottom: 16,
                                      ),
                                      child: Text(
                                        "a ipsum dolor sit amet, consetetur sadipscing elitr, sed",
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular14Gray6001,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Iphone14ProMaxNineteenScreen(),
                              ),
                            );
                          },
                          child: Container(
                                margin: getMargin(
                                  left: 10,
                                ),
                                decoration: AppDecoration.outlineGray100.copyWith(
                                  borderRadius: BorderRadiusStyle.roundedBorder8,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Card(
                                      clipBehavior: Clip.antiAlias,
                                      elevation: 0,
                                      margin: EdgeInsets.all(0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(
                                            getHorizontalSize(
                                              8,
                                            ),
                                          ),
                                          topRight: Radius.circular(
                                            getHorizontalSize(
                                              8,
                                            ),
                                          ),
                                        ),
                                      ),
                                      child: Container(
                                        height: getVerticalSize(
                                          83,
                                        ),
                                        width: getHorizontalSize(
                                          169,
                                        ),
                                        padding: getPadding(
                                          top: 29,
                                          bottom: 29,
                                        ),
                                        decoration: AppDecoration
                                            .gradientCyan700Teal900
                                            .copyWith(
                                          borderRadius:
                                          BorderRadiusStyle.customBorderTL8,
                                        ),
                                        child: Stack(
                                          children: [
                                            CustomImageView(
                                              svgPath: ImageConstant.imgLocation,
                                              height: getSize(
                                                24,
                                              ),
                                              width: getSize(
                                                24,
                                              ),
                                              alignment: Alignment.center,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: getHorizontalSize(
                                        151,
                                      ),
                                      margin: getMargin(
                                        top: 9,
                                      ),
                                      child: Text(
                                        "Lorem ipsum dolor sit amet",
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterBold16,
                                      ),
                                    ),
                                    Container(
                                      width: getHorizontalSize(
                                        151,
                                      ),
                                      margin: getMargin(
                                        top: 13,
                                        bottom: 16,
                                      ),
                                      child: Text(
                                        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed",
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular14Gray6001,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Align na parte inferior da tela
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
                                                    ),                                                  ])),
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
                          ])))
            ]),
      ),
    );
  }
}
