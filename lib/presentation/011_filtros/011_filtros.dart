import '../011_filtros/widgets/gridtrash_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:joo_s_application3/core/app_export.dart';
import 'package:joo_s_application3/widgets/app_bar/appbar_image.dart';
import 'package:joo_s_application3/widgets/app_bar/appbar_title.dart';
import 'package:joo_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:joo_s_application3/widgets/custom_switch.dart';

class FilterDialog extends StatefulWidget {
  @override
  Iphone14ProMaxThirteenScreen createState() => Iphone14ProMaxThirteenScreen();
}

class Iphone14ProMaxThirteenScreen extends State<FilterDialog> {
  String _selectedCity = 'São Paulo';
  bool _switchValue = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            64,
          ),
          title: AppbarTitle(
            text: "Filtros",
            margin: getMargin(
              left: 26,
            ),
          ),
          actions: [
            AppbarImage(
              height: getSize(
                20,
              ),
              width: getSize(
                20,
              ),
              svgPath: ImageConstant.imgCloseGray600,
              margin: getMargin(
                left: 18,
                top: 8,
                right: 18,
                bottom: 27,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
         child: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 17,
            top: 44,
            right: 17,
            bottom: 44,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  left: 7,
                  right: 1,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "O que você procura?",
                          border: InputBorder.none,
                        ),
                        style: AppStyle.txtInterRegular16Gray600,
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgSearch,
                      height: getSize(
                        17,
                      ),
                      width: getSize(
                        17,
                      ),
                      margin: getMargin(
                        bottom: 0,
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: getPadding(
                  top: 1,
                ),
                child: Divider(
                  color: ColorConstant.gray600,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 7,
                  top: 60,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Cidade",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterRegular16Gray600,
                    ),
                    SizedBox(height: 8),
                    DropdownButton<String>(
                      value: _selectedCity,
                      onChanged: (String? newValue) {
                        setState(() {
                          _selectedCity = newValue!;
                        });
                      },
                      isExpanded: true,
                      items: <String>[
                        'São Paulo',
                        'Rio de Janeiro',
                        'Belo Horizonte',
                        'Curitiba',
                        'Porto Alegre',
                        'Salvador',
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 9,
                  top: 56,
                ),
                child: Row(
                  children: [
                    CustomSwitch(
                      value: _switchValue,
                      onChanged: (bool newValue) {
                        setState(() {
                          _switchValue = newValue;
                        });
                      },
                    ),
                    Padding(
                      padding: getPadding(
                        left: 10,
                        bottom: 1,
                      ),
                      child: Text(
                        "Próximos a mim",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterRegular16Gray600,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 7,
                  top: 57,
                ),
                child: Text(
                  "Categorias",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterRegular16Gray600,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 8,
                  top: 5,
                ),
                child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: getVerticalSize(
                      95,
                    ),
                    crossAxisCount: 2,
                    mainAxisSpacing: getHorizontalSize(
                      10,
                    ),
                    crossAxisSpacing: getHorizontalSize(
                      10,
                    ),
                  ),
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return GridtrashItemWidget();
                  },
                ),
              ),
            ],
          ),
        ),
        ),
    ));
  }
}