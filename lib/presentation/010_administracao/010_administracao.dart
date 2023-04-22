import '../010_administracao/widgets/grupoderolagem1_item_widget.dart';
import '../010_administracao/widgets/slideracnoite_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:joo_s_application3/core/app_export.dart';
import 'package:joo_s_application3/widgets/app_bar/appbar_image.dart';
import 'package:joo_s_application3/widgets/app_bar/appbar_title.dart';
import 'package:joo_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:joo_s_application3/widgets/custom_drop_down.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:joo_s_application3/presentation/012_comentario/012_comentario.dart';
import '../008_menu/008_menu.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../009_administracoes/009_administracoes.dart';
import '../013_comercios/013_comercios.dart';
import '../016_feiras/016_feiras.dart';
import '../017_parceiros/017_parceiros.dart';
import '../007_pagina_principal/007_pagina_principal.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore_for_file: must_be_immutable
class Iphone14ProMaxTwelveScreen extends StatelessWidget {
  int silderIndex = 1;

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

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
                              margin: getMargin(left: 6, right: 200),
                              onTap: () => onTapArrowleft(context)),
                          AppbarTitle(
                              text: "Águas Claras | RA XX",
                              margin: getMargin(top: 13))
                        ])),
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
                ]),
            body: Stack(
                children: [
                SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(top: 21, bottom: 145),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  height: getVerticalSize(202),
                                  width: getHorizontalSize(400),
                                  child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        CarouselSlider.builder(
                                            options: CarouselOptions(
                                                height: getVerticalSize(202),
                                                initialPage: 0,
                                                autoPlay: true,
                                                viewportFraction: 1.0,
                                                enableInfiniteScroll: false,
                                                scrollDirection:
                                                    Axis.horizontal,
                                                onPageChanged: (index, reason) {
                                                  silderIndex = index;
                                                }),
                                            itemCount: 1,
                                            itemBuilder:
                                                (context, index, realIndex) {
                                              return SlideracnoiteItemWidget();
                                            }),
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                                height: getVerticalSize(9),
                                                margin: getMargin(bottom: 9),
                                                child: AnimatedSmoothIndicator(
                                                    activeIndex: silderIndex,
                                                    count: 1,
                                                    axisDirection:
                                                        Axis.horizontal,
                                                    effect: ScrollingDotsEffect(
                                                        spacing: 3,
                                                        activeDotColor:
                                                            ColorConstant
                                                                .whiteA700,
                                                        dotColor: ColorConstant
                                                            .whiteA70099,
                                                        dotHeight:
                                                            getVerticalSize(9),
                                                        dotWidth:
                                                            getHorizontalSize(
                                                                9)))))
                                      ])),
                              Container(
                                  width: getHorizontalSize(393),
                                  margin:
                                      getMargin(left: 15, top: 20, right: 21),
                                  child: Text(
                                      "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. \n\nAt vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing",
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style:
                                          AppStyle.txtInterRegular14Gray6001)),
                              Container(
                                  width: double.maxFinite,
                                  child: Container(
                                      margin: getMargin(top: 45),
                                      padding: getPadding(
                                          left: 12,
                                          top: 22,
                                          right: 12,
                                          bottom: 22),
                                      decoration: AppDecoration.fillGray100,
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding: getPadding(
                                                    left: 3, right: 3),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text("Informações",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular14Cyan70001),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgArrowdown,
                                                          height:
                                                              getVerticalSize(
                                                                  6),
                                                          width:
                                                              getHorizontalSize(
                                                                  14),
                                                          margin: getMargin(
                                                              top: 4,
                                                              bottom: 5))
                                                    ])),
                                            Padding(
                                                padding: getPadding(
                                                    left: 2,
                                                    top: 25,
                                                    right: 72),
                                                child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgLocationGray900,
                                                          height:
                                                              getVerticalSize(
                                                                  24),
                                                          width:
                                                              getHorizontalSize(
                                                                  20),
                                                          margin: getMargin(
                                                              bottom: 15)),
                                                      Expanded(
                                                          child: Container(
                                                              width:
                                                                  getHorizontalSize(
                                                                      302),
                                                              margin: getMargin(
                                                                  left: 8,
                                                                  top: 2),
                                                              child: Text(
                                                                  "Rua Manacá, Lote 02, Bloco 01 Aguas Claras | 71936-500",
                                                                  maxLines:
                                                                      null,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtInterRegular14Gray6001)))
                                                    ])),
                                            Padding(
                                                padding: getPadding(
                                                    top: 26, right: 48),
                                                child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgClockGray900,
                                                          height: getSize(24),
                                                          width: getSize(24)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 7,
                                                              top: 3,
                                                              bottom: 4),
                                                          child: Text(
                                                              "08h00 - 17h00",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterRegular14Gray600)),
                                                      Spacer(),
                                                GestureDetector(
                                                  onTap: () => launch("tel://610000000"), // substitua o número de telefone por um válido
                                                  child: Row(
                                                      children: [
                                                        CustomImageView(
                                                            svgPath: ImageConstant.imgCall,
                                                            height: getSize(23),
                                                            width: getSize(23),
                                                            margin: getMargin(top: 1)
                                                        ),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 16,
                                                                top: 3,
                                                                bottom: 4
                                                            ),
                                                            child: Text(
                                                                "61 0000-0000",
                                                                overflow: TextOverflow.ellipsis,
                                                                textAlign: TextAlign.left,
                                                                style: AppStyle.txtInterRegular14Gray600
                                                            )
                                                        ),
                                                      ]
                                                  ),
                                                )
                                                    ])),
                                  GestureDetector(
                                    onTap: () {
                                      launch("mailto:mail@mail.com.br");
                                    },
                                    child: Padding(
                                      padding: getPadding(top: 28),
                                      child: Row(
                                        children: [
                                          CustomImageView(
                                            svgPath: ImageConstant.imgEnvelope,
                                            height: getVerticalSize(22),
                                            width: getHorizontalSize(24),
                                          ),
                                          Padding(
                                            padding: getPadding(left: 7, top: 3, bottom: 1),
                                            child: Text(
                                              "mail@mail.com.br",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtInterRegular14Gray600,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                            GestureDetector(
                                              onTap: () {
                                                launch("https://www.example.com");
                                              },
                                              child: Padding(
                                                padding: getPadding(top: 29, bottom: 7),
                                                child: Row(
                                                  children: [
                                                    CustomImageView(
                                                      svgPath: ImageConstant.imgFolder,
                                                      height: getVerticalSize(22),
                                                      width: getHorizontalSize(24),
                                                    ),
                                                    Padding(
                                                      padding: getPadding(left: 7, top: 3, bottom: 1),
                                                      child: Text(
                                                        "website@mail.com.br",
                                                        overflow: TextOverflow.ellipsis,
                                                        textAlign: TextAlign.left,
                                                        style: AppStyle.txtInterRegular14Gray600,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ]))),
                              Container(
                                  height: getVerticalSize(370),
                                  width: double.maxFinite,
                                  margin: getMargin(top: 6),
                                  child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                decoration:
                                                    AppDecoration.fillGray100,
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      CustomDropDown(
                                                          focusNode:
                                                              FocusNode(),
                                                          hintText:
                                                              "Comentários (12)",
                                                          margin: getMargin(
                                                              left: 15,
                                                              top: 21,
                                                              right: 15),
                                                          onChanged:
                                                              (value) {}),
                                                      Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  393),
                                                          margin: getMargin(
                                                              left: 15,
                                                              top: 27,
                                                              right: 21),
                                                          child: Text(
                                                              "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed \ndiam nonumy eirmod tempor invidunt ut labore et dolore \nmagna aliquyam erat, sed diam voluptua. ",
                                                              maxLines: null,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterRegular14Gray9001)),
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 15,
                                                                      top: 16),
                                                              child: Row(
                                                                  children: [
                                                                    Text(
                                                                        "Por Jhenyfer Santos",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtInterRegular12),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                44),
                                                                        child: Text(
                                                                            "00/00/0000",
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtInterRegular12))
                                                                  ]))),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 21),
                                                          child: Divider(
                                                              color: ColorConstant
                                                                  .blueGray200)),
                                                      Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  393),
                                                          margin: getMargin(
                                                              left: 15,
                                                              top: 21,
                                                              right: 21),
                                                          child: Text(
                                                              "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed \ndiam nonumy eirmod tempor invidunt ut labore et dolore \nmagna aliquyam erat, sed diam voluptua. ",
                                                              maxLines: null,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterRegular14Gray9001)),
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 15,
                                                                      top: 16),
                                                              child: Row(
                                                                  children: [
                                                                    Text(
                                                                        "Por Jhenyfer Santos",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtInterRegular12),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                44),
                                                                        child: Text(
                                                                            "00/00/0000",
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtInterRegular12))
                                                                  ]))),
                                                      Container(
                                                          width:
                                                              double.maxFinite,
                                                          child: InkWell(
                                                              onTap: () {
                                                                showDialog(
                                                                  context: context,
                                                                  builder: (BuildContext context) {
                                                                    return Dialog(
                                                                      child: FractionallySizedBox(
                                                                        widthFactor: 1.2,
                                                                        heightFactor: 0.7,
                                                                        child: FilterDialogComment(),
                                                                      ),
                                                                    );
                                                                  },
                                                                );
                                                              },
                                                              child: Container(
                                                                  margin: getMargin(top: 3.2),
                                                                  padding: getPadding(left: 155, top: 15, right: 155, bottom: 20),
                                                                  decoration: AppDecoration.fillGray300,
                                                                  child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            bottom:
                                                                                0),
                                                                        child: Text(
                                                                            "Fazer comentário",
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtInterBold14Cyan70001.copyWith(decoration: TextDecoration.underline)))
                                                                  ]))))
                                                    ]))),
                                      ])),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(left: 15, top: 57),
                                      child: Row(children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgShop,
                                            height: getSize(18),
                                            width: getSize(18),
                                            margin: getMargin(bottom: 3)),
                                        Padding(
                                            padding: getPadding(left: 8),
                                            child: Text("Comércios na região",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtInterBold18))
                                      ]))),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: getVerticalSize(228),
                                      child: ListView.separated(
                                          padding:
                                              getPadding(left: 15, top: 11),
                                          scrollDirection: Axis.horizontal,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                                height: getVerticalSize(10));
                                          },
                                          itemCount: 3,
                                          itemBuilder: (context, index) {
                                            return Grupoderolagem1ItemWidget();
                                          })))
                            ]))),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          height: 300,
                          width: double.maxFinite,
                          margin: getMargin(top: 714),
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
                              ])))
            ])));
  }

  onTapArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}