import '../014_comercio/widgets/listclock_item_widget.dart';
import '../014_comercio/widgets/slider2086dfff95188_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:joo_s_application3/core/app_export.dart';
import 'package:joo_s_application3/widgets/app_bar/appbar_image.dart';
import 'package:joo_s_application3/widgets/app_bar/appbar_title.dart';
import 'package:joo_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:joo_s_application3/widgets/custom_drop_down.dart';
import 'package:joo_s_application3/widgets/custom_icon_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:joo_s_application3/presentation/015_avaliacao/015_avaliacao.dart';
import 'package:joo_s_application3/presentation/012_comentario/012_comentario.dart';
import '../009_administracoes/009_administracoes.dart';
import '../016_feiras/016_feiras.dart';
import '../017_parceiros/017_parceiros.dart';
import '../007_pagina_principal/007_pagina_principal.dart';
import '../013_comercios/013_comercios.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../008_menu/008_menu.dart';
import 'package:url_launcher/url_launcher.dart';



// ignore_for_file: must_be_immutable
class Iphone14ProMaxFifteenScreen extends StatelessWidget {
  int silderIndex = 1;

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(83),
                title: Padding(
                    padding: getPadding(left: 15),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          AppbarImage(
                              height: getVerticalSize(12),
                              width: getHorizontalSize(24),
                              svgPath: ImageConstant.imgArrowleft,
                              margin: getMargin(left: 6, right: 97),
                              onTap: () => onTapArrowleft1(context)),
                          AppbarTitle(
                              text: "Comércios", margin: getMargin(top: 12))
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
                        padding: getPadding(top: 22, bottom: 145),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  height: getVerticalSize(214),
                                  width: getHorizontalSize(400),
                                  child: Stack(
                                      alignment: Alignment.bottomLeft,
                                      children: [
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Container(
                                                height: getVerticalSize(202),
                                                width: getHorizontalSize(400),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    children: [
                                                      CarouselSlider.builder(
                                                          options:
                                                              CarouselOptions(
                                                                  height:
                                                                      getVerticalSize(
                                                                          202),
                                                                  initialPage:
                                                                      0,
                                                                  autoPlay:
                                                                      true,
                                                                  viewportFraction:
                                                                      1.0,
                                                                  enableInfiniteScroll:
                                                                      false,
                                                                  scrollDirection:
                                                                      Axis
                                                                          .horizontal,
                                                                  onPageChanged:
                                                                      (index,
                                                                          reason) {
                                                                    silderIndex =
                                                                        index;
                                                                  }),
                                                          itemCount: 1,
                                                          itemBuilder: (context,
                                                              index,
                                                              realIndex) {
                                                            return Slider2086dfff95188ItemWidget();
                                                          }),
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      9),
                                                              margin: getMargin(
                                                                  bottom: 9),
                                                              child: AnimatedSmoothIndicator(
                                                                  activeIndex:
                                                                      silderIndex,
                                                                  count: 1,
                                                                  axisDirection:
                                                                      Axis
                                                                          .horizontal,
                                                                  effect: ScrollingDotsEffect(
                                                                      spacing:
                                                                          3,
                                                                      activeDotColor:
                                                                          ColorConstant
                                                                              .whiteA700,
                                                                      dotColor:
                                                                          ColorConstant
                                                                              .whiteA70099,
                                                                      dotHeight:
                                                                          getVerticalSize(
                                                                              9),
                                                                      dotWidth:
                                                                          getHorizontalSize(
                                                                              9)))))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Container(
                                                width: getHorizontalSize(83),
                                                margin: getMargin(left: 106),
                                                padding: getPadding(
                                                    left: 12,
                                                    top: 2,
                                                    right: 12,
                                                    bottom: 2),
                                                decoration: AppDecoration
                                                    .txtFillCyan70001
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .txtRoundedBorder11),
                                                child: Text("Categoria",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterRegular12WhiteA700))),
                                        Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Container(
                                                width: getHorizontalSize(83),
                                                margin: getMargin(left: 13),
                                                padding: getPadding(
                                                    left: 12,
                                                    top: 2,
                                                    right: 12,
                                                    bottom: 2),
                                                decoration: AppDecoration
                                                    .txtFillCyan70001
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .txtRoundedBorder11),
                                                child: Text("Categoria",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterRegular12WhiteA700)))
                                      ])),
                              Padding(
                                  padding:
                                      getPadding(left: 15, top: 3, right: 15),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                            padding:
                                                getPadding(top: 15, bottom: 12),
                                            child: Text("Cobasi",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterBold25Gray9001)),
                                        Container(
                                            padding: getPadding(
                                                left: 7,
                                                top: 8,
                                                right: 7,
                                                bottom: 8),
                                            decoration: AppDecoration
                                                .fillGray100
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder8),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  CustomIconButton(
                                                      height: 42,
                                                      width: 42,
                                                      margin:
                                                          getMargin(bottom: 1),
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgDashboard)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 8,
                                                          top: 2,
                                                          bottom: 3),
                                                      child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            RichText(
                                                                text: TextSpan(
                                                                    children: [
                                                                      TextSpan(
                                                                          text:
                                                                              "8.2",
                                                                          style: TextStyle(
                                                                              color: ColorConstant.cyan900,
                                                                              fontSize: getFontSize(14),
                                                                              fontFamily: 'Inter',
                                                                              fontWeight: FontWeight.w700)),
                                                                      TextSpan(
                                                                          text:
                                                                              " / 10",
                                                                          style: TextStyle(
                                                                              color: ColorConstant.gray600,
                                                                              fontSize: getFontSize(14),
                                                                              fontFamily: 'Inter',
                                                                              fontWeight: FontWeight.w700))
                                                                    ]),
                                                                textAlign:
                                                                    TextAlign
                                                                        .left),
                                                            GestureDetector(
                                                                onTap: () {
                                                                  onTapTxtAvaliar(
                                                                      context);
                                                                },
                                                                child: Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                4),
                                                                    child: Text(
                                                                        "Avaliar",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtInterRegular12Cyan900
                                                                            .copyWith(decoration: TextDecoration.underline))))
                                                          ]))
                                                ]))
                                      ])),
                              Container(
                                  width: getHorizontalSize(393),
                                  margin:
                                      getMargin(left: 15, top: 21, right: 21),
                                  child: Text(
                                      "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. \n\nAt vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing",
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style:
                                          AppStyle.txtInterRegular14Gray6001)),
                              Container(
                                  height: getVerticalSize(658),
                                  width: double.maxFinite,
                                  margin: getMargin(top: 40),
                                  child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Container(
                                                padding: getPadding(
                                                    left: 12,
                                                    top: 22,
                                                    right: 12,
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
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 3,
                                                              right: 3),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                    "Informações",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterBold14Cyan70001),
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgArrowdown,
                                                                    height:
                                                                        getVerticalSize(
                                                                            6),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            14),
                                                                    margin: getMargin(
                                                                        top: 4,
                                                                        bottom:
                                                                            5))
                                                              ])),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 2,
                                                              top: 25,
                                                              right: 79),
                                                          child: Row(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgLocationGray900,
                                                                    height:
                                                                        getVerticalSize(
                                                                            24),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            20),
                                                                    margin: getMargin(
                                                                        bottom:
                                                                            15)),
                                                                Expanded(
                                                                    child: Container(
                                                                        width: getHorizontalSize(
                                                                            295),
                                                                        margin: getMargin(
                                                                            left:
                                                                                8,
                                                                            top:
                                                                                5),
                                                                        child: Text(
                                                                            "Endereço aqui, 3822 - Bairro - Estado - CEP: 00000-000",
                                                                            maxLines:
                                                                                null,
                                                                            textAlign:
                                                                                TextAlign.left,
                                                                            style: AppStyle.txtInterRegular14Gray6001)))
                                                              ])),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 26,
                                                              right: 48),
                                                          child: ListView
                                                              .separated(
                                                                  physics:
                                                                      NeverScrollableScrollPhysics(),
                                                                  shrinkWrap:
                                                                      true,
                                                                  separatorBuilder:
                                                                      (context,
                                                                          index) {
                                                                    return SizedBox(
                                                                        height:
                                                                            getVerticalSize(28));
                                                                  },
                                                                  itemCount: 1,
                                                                  itemBuilder:
                                                                      (context,
                                                                          index) {
                                                                    return ListclockItemWidget();
                                                                  })),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 22),
                                                          child: Row(children: [
                                                            GestureDetector(
                                                              onTap: () {
                                                                launch("https://www.seusite.com.br");
                                                              },
                                                              child: Row(
                                                                children: [
                                                                  CustomImageView(
                                                                    svgPath: ImageConstant.imgFolder,
                                                                    height: getVerticalSize(22),
                                                                    width: getHorizontalSize(24),
                                                                  ),
                                                                  Padding(
                                                                    padding: getPadding(
                                                                      left: 7,
                                                                      top: 3,
                                                                      bottom: 1,
                                                                    ),
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
                                                          ]))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.bottomCenter,
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
                                                          items:
                                                              dropdownItemList,
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
                                                          child: GestureDetector(
                                                              onTap: () {
                                                                onTapColumnfazercomentrio(
                                                                    context);
                                                              },
                                                              child: Container(
                                                                  margin: getMargin(top: 25),
                                                                  padding: getPadding(left: 155, top: 18, right: 155, bottom: 18),
                                                                  decoration: AppDecoration.fillGray300,
                                                                  child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            bottom:
                                                                                1),
                                                                        child: Text(
                                                                            "Fazer comentário",
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtInterBold14Cyan70001.copyWith(decoration: TextDecoration.underline)))
                                                                  ]))))
                                                    ]))),
                                      ]))
                            ]))),
                Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                        height: 300,
                        width: double.maxFinite,
                        margin: getMargin(top: 715),
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
                                                          margin: getMargin(left: 5),
                                                        ),
                                                      ),
                                                    ])),
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
                                                      ),
                                                      Padding(padding: getPadding(top: 6), child: Text("Comércios", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterBold14))
                                                    ])),
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


  onTapTxtAvaliar(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => FractionallySizedBox(
        widthFactor: 1.29,
        heightFactor: 0.9,
        child: AlertDialog(
          content: Iphone14ProMaxSeventeenDialog(),
          backgroundColor: Colors.transparent,
        ),
      ),
    );
  }


  onTapColumnfazercomentrio(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => FractionallySizedBox(
        widthFactor: 1.29,
        heightFactor: 0.9,
        child: AlertDialog(
          content: FilterDialogComment(),
          backgroundColor: Colors.transparent,
        ),
      ),
    );
  }

  onTapArrowleft1(BuildContext context) {
    Navigator.pop(context);
  }
}
