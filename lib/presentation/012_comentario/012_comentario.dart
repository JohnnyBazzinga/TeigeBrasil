import 'package:flutter/material.dart';
import 'package:joo_s_application3/core/app_export.dart';
import 'package:file_picker/file_picker.dart';
import 'package:joo_s_application3/widgets/custom_button.dart';

class FilterDialogComment extends StatefulWidget {
  @override
  _FilterDialogCommentState createState() => _FilterDialogCommentState();
}

class _FilterDialogCommentState extends State<FilterDialogComment> {
  String _fileName = "";

  Future<void> _selectFile() async {
    final result = await FilePicker.platform.pickFiles();
    if (result != null) {
      setState(() {
        _fileName = result.files.single.name;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: getHorizontalSize(500),
        decoration: AppDecoration.fillWhiteA700
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
        child: SingleChildScrollView(
          child: Container(
            width: double.maxFinite,
            padding: getPadding(
              left: 17,
              top: 44,
              right: 17,
              bottom: 100,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomImageView(
                    svgPath: ImageConstant.imgCloseGray600,
                    height: getSize(20),
                    width: getSize(20),
                    alignment: Alignment.centerRight,
                    onTap: () {
                      onTapImgClose(context);
                    }),
                Padding(
                    padding: getPadding(top: 1, left:70),
                    child: Text("Faça um comentário",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterBold25Gray9001)),
                Container(
                    width: getHorizontalSize(312),
                    margin: getMargin(left: 22, top: 45, right: 19, bottom:50),
                    child: Text(
                        "Essa é uma área onde você pode fazer comentários. Não se preocupe seus dados estão seguros.",
                        maxLines: null,
                        textAlign: TextAlign.center,
                        style: AppStyle.txtInterRegular20Gray900)),
                Padding(
                    padding: getPadding(left: 8, right: 10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Digite aqui',
                              ),
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular16Gray600,
                            ),
                          ),
                          CustomImageView(
                              svgPath: ImageConstant.imgMicrophone,
                              height: getVerticalSize(16),
                              width: getHorizontalSize(11),
                              margin: getMargin(top: 2)
                          )
                        ]
                    )
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: getPadding(left: 8, top: 45),
                        child: Text("Clique para fazer algum anexo",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterBold16Gray600))),
                Padding(
                  padding: getPadding(left: 15, top: 13, right: 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () => _selectFile(),
                        child: Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: EdgeInsets.all(0),
                          color: ColorConstant.gray100,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.circular(getHorizontalSize(8)),
                          ),
                          child: Container(
                            height: getVerticalSize(58),
                            width: getHorizontalSize(100),
                            margin: getMargin(right:10),
                            padding: getPadding(
                              left: 40,
                              top: 19,
                              right: 40,
                              bottom: 19,
                            ),
                            decoration: AppDecoration.fillGray100.copyWith(
                              borderRadius:
                              BorderRadiusStyle.roundedBorder8,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgVideocamera,
                                  height: getVerticalSize(20),
                                  width: getHorizontalSize(30),
                                  alignment: Alignment.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: getHorizontalSize(10)), // espaço entre os gestos
                      GestureDetector(
                        onTap: () => _selectFile(),
                        child: Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: EdgeInsets.all(0),
                          color: ColorConstant.gray100,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.circular(getHorizontalSize(8)),
                          ),
                          child: Container(
                            height: getVerticalSize(58),
                            width: getHorizontalSize(100),
                            padding: getPadding(
                              left: 40,
                              top: 19,
                              right: 40,
                              bottom: 19,
                            ),
                            decoration: AppDecoration.fillGray100.copyWith(
                              borderRadius:
                              BorderRadiusStyle.roundedBorder8,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgCameraCyan70001,
                                  height: getVerticalSize(20),
                                  width: getHorizontalSize(30),
                                  alignment: Alignment.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: getHorizontalSize(10)), // espaço entre os gestos
                      GestureDetector(
                        onTap: () => _selectFile(),
                        child: Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: EdgeInsets.all(0),
                          color: ColorConstant.gray100,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.circular(getHorizontalSize(8)),
                          ),
                          child: Container(
                            height: getVerticalSize(58),
                            width: getHorizontalSize(100),
                            padding: getPadding(
                              left: 40,
                              top: 19,
                              right: 40,
                              bottom: 19,
                            ),
                            decoration: AppDecoration.fillGray100.copyWith(
                              borderRadius:
                              BorderRadiusStyle.roundedBorder8,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgMicrophoneCyan70001,
                                  height: getVerticalSize(20),
                                  width: getHorizontalSize(35),
                                  alignment: Alignment.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: getHorizontalSize(10)),
                Text(
                  _fileName.isNotEmpty
                      ? _fileName
                      : "",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: AppStyle
                      .txtInterRegular14Gray600
                      .copyWith(
                      fontWeight: FontWeight.bold),
                ),
                CustomButton(
                    height: getVerticalSize(45),
                    text: "Enviar",
                    margin: getMargin(left: 33, top: 50, right: 32, bottom: 29),
                    fontStyle: ButtonFontStyle.InterBold18)
              ],
            ),
          ),
        ),
      ),
    );
  }
  onTapImgClose(BuildContext context) {
    Navigator.pop(context);
  }
}
