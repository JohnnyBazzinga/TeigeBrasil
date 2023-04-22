import 'package:flutter/material.dart';
import 'package:joo_s_application3/core/app_export.dart';
import 'package:joo_s_application3/widgets/custom_button.dart';

class Iphone14ProMaxFiveScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: ColorConstant.blueGray100,
            body: Container(
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                    color: ColorConstant.blueGray100,
                    gradient: LinearGradient(
                        begin: Alignment(0, 0),
                        end: Alignment(0, 0.9),
                        colors: [
                          ColorConstant.cyan7009d,
                          ColorConstant.teal9009d
                        ])),
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 30, top: 28, right: 30, bottom: 110),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CustomImageView(
                              svgPath: ImageConstant.imgGrupo33,
                              height: getVerticalSize(159),
                              width: getHorizontalSize(329),
                              alignment: Alignment.center,
                              margin: getMargin(top: 157)),
                          Spacer(),
                          Text("Que bom ter você por aqui!",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold25),
                          Container(
                              width: getHorizontalSize(250),
                              margin: getMargin(top: 14),
                              child: Text(
                                  "Para acessar, escolha uma opção abaixo",
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular20)),
                          CustomButton(
                              height: getVerticalSize(45),
                              text: "Entrar",
                              margin: getMargin(left: 41, top: 45, right: 40),
                              variant: ButtonVariant.FillWhiteA700,
                              onTap: () => onTapEntrar(context),
                              alignment: Alignment.center)
                        ]))),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(45),
                width: getHorizontalSize(289),
                text: "Fazer meu cadastro",
                margin: getMargin(left: 71, right: 70, bottom: 39),
                variant: ButtonVariant.OutlineWhiteA700,
                fontStyle: ButtonFontStyle.InterRegular18WhiteA700,
                onTap: () => onTapFazermeucadastro(context))));
  }

  onTapEntrar(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ProMaxTwoScreen);
  }

  onTapFazermeucadastro(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ProMaxSixScreen);
  }
}
