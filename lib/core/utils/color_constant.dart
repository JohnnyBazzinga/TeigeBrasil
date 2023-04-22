import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color black9003d = fromHex('#3d000000');

  static Color gray90075 = fromHex('#7528292b');

  static Color red400 = fromHex('#ea6143');

  static Color green500 = fromHex('#4fba4c');

  static Color whiteA70099 = fromHex('#99ffffff');

  static Color whiteA70075 = fromHex('#75ffffff');

  static Color lightGreen500 = fromHex('#8dd834');

  static Color black900 = fromHex('#000000');

  static Color teal900 = fromHex('#002f4e');

  static Color blueGray90001 = fromHex('#072139');

  static Color blueGray900 = fromHex('#102a41');

  static Color gray600 = fromHex('#6b6d71');

  static Color blueGray200 = fromHex('#bec4d0');

  static Color blueGray100 = fromHex('#d9d9d9');

  static Color teal9009d = fromHex('#9d002f4e');

  static Color gray900 = fromHex('#28292b');

  static Color amber200 = fromHex('#ffdb98');

  static Color gray300 = fromHex('#e2e5eb');

  static Color orange300 = fromHex('#ffc14d');

  static Color gray100 = fromHex('#f4f5f7');

  static Color whiteA70063 = fromHex('#63ffffff');

  static Color cyan7009d = fromHex('#9d15959f');

  static Color bluegray400 = fromHex('#888888');

  static Color cyan70001 = fromHex('#00929c');

  static Color cyan900 = fromHex('#004d66');

  static Color cyan700 = fromHex('#15959f');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
