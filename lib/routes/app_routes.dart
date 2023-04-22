import 'package:flutter/material.dart';
import 'package:joo_s_application3/presentation/iphone_14_pro_max_zero_screen/iphone_14_pro_max_zero_screen.dart';
import 'package:joo_s_application3/presentation/iphone_14_pro_max_one_screen/iphone_14_pro_max_one_screen.dart';
import 'package:joo_s_application3/presentation/iphone_14_pro_max_three_screen/iphone_14_pro_max_three_screen.dart';
import 'package:joo_s_application3/presentation/iphone_14_pro_max_four_screen/iphone_14_pro_max_four_screen.dart';
import 'package:joo_s_application3/presentation/001_video_de_entrada/001_video_de_entrada.dart';
import 'package:joo_s_application3/presentation/002_login/002_login.dart';
import 'package:joo_s_application3/presentation/003_cadastro/003_cadastro.dart';
import 'package:joo_s_application3/presentation/004_loading/004_loading.dart';
import 'package:joo_s_application3/presentation/005_confirmacao_de_cadastro/005_confirmacao_de_cadastro.dart';
import 'package:joo_s_application3/presentation/007_pagina_principal/007_pagina_principal.dart';
import 'package:joo_s_application3/presentation/009_administracoes/009_administracoes.dart';
import 'package:joo_s_application3/presentation/010_administracao/010_administracao.dart';
import 'package:joo_s_application3/presentation/011_filtros/011_filtros.dart';
import 'package:joo_s_application3/presentation/013_comercios/013_comercios.dart';
import 'package:joo_s_application3/presentation/014_comercio/014_comercio.dart';
import 'package:joo_s_application3/presentation/016_feiras/016_feiras.dart';
import 'package:joo_s_application3/presentation/iphone_14_pro_max_nineteen_screen/iphone_14_pro_max_nineteen_screen.dart';
import 'package:joo_s_application3/presentation/017_parceiros/017_parceiros.dart';
import 'package:joo_s_application3/presentation/iphone_14_pro_max_twentyone_screen/018_parceiro.dart';
import 'package:joo_s_application3/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String iphone14ProMaxZeroScreen =
      '/iphone_14_pro_max_zero_screen';

  static const String iphone14ProMaxOneScreen = '/iphone_14_pro_max_one_screen';

  static const String iphone14ProMaxThreeScreen =
      '/iphone_14_pro_max_three_screen';

  static const String iphone14ProMaxFourScreen =
      '/iphone_14_pro_max_four_screen';

  static const String iphone14ProMaxFiveScreen =
      '/iphone_14_pro_max_five_screen';

  static const String iphone14ProMaxTwoScreen = '/iphone_14_pro_max_two_screen';

  static const String iphone14ProMaxSixScreen = '/iphone_14_pro_max_six_screen';

  static const String iphone14ProMaxSevenScreen =
      '/iphone_14_pro_max_seven_screen';

  static const String iphone14ProMaxEightScreen =
      '/iphone_14_pro_max_eight_screen';

  static const String iphone14ProMaxNineScreen =
      '/iphone_14_pro_max_nine_screen';

  static const String iphone14ProMaxElevenScreen =
      '/iphone_14_pro_max_eleven_screen';

  static const String iphone14ProMaxTwelveScreen =
      '/iphone_14_pro_max_twelve_screen';

  static const String iphone14ProMaxThirteenScreen =
      '/iphone_14_pro_max_thirteen_screen';

  static const String iphone14ProMaxFourteenScreen =
      '/iphone_14_pro_max_fourteen_screen';

  static const String iphone14ProMaxFifteenScreen =
      '/iphone_14_pro_max_fifteen_screen';

  static const String iphone14ProMaxSixteenScreen =
      '/iphone_14_pro_max_sixteen_screen';

  static const String iphone14ProMaxNineteenScreen =
      '/iphone_14_pro_max_nineteen_screen';

  static const String iphone14ProMaxTwentyScreen =
      '/iphone_14_pro_max_twenty_screen';

  static const String iphone14ProMaxTwentyoneScreen =
      '/iphone_14_pro_max_twentyone_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    iphone14ProMaxZeroScreen: (context) => Iphone14ProMaxNineScreen(),
    iphone14ProMaxOneScreen: (context) => Iphone14ProMaxNineScreen(),
    iphone14ProMaxThreeScreen: (context) => Iphone14ProMaxThreeScreen(),
    iphone14ProMaxFourScreen: (context) => Iphone14ProMaxFourScreen(),
    iphone14ProMaxFiveScreen: (context) => Iphone14ProMaxFiveScreen(),
    iphone14ProMaxTwoScreen: (context) => Iphone14ProMaxTwoScreen(),
    iphone14ProMaxSixScreen: (context) => Iphone14ProMaxSixScreen(),
    iphone14ProMaxSevenScreen: (context) => Iphone14ProMaxSevenScreen(),
    iphone14ProMaxEightScreen: (context) => Iphone14ProMaxEightScreen(),
    iphone14ProMaxNineScreen: (context) => Iphone14ProMaxNineScreen(),
    iphone14ProMaxElevenScreen: (context) => Iphone14ProMaxElevenScreen(),
    iphone14ProMaxTwelveScreen: (context) => Iphone14ProMaxTwelveScreen(),
    iphone14ProMaxThirteenScreen: (context) => FilterDialog(),
    iphone14ProMaxFourteenScreen: (context) => Iphone14ProMaxFourteenScreen(),
    iphone14ProMaxFifteenScreen: (context) => Iphone14ProMaxFifteenScreen(),
    iphone14ProMaxSixteenScreen: (context) => Iphone14ProMaxSixteenScreen(),
    iphone14ProMaxNineteenScreen: (context) => Iphone14ProMaxNineteenScreen(),
    iphone14ProMaxTwentyScreen: (context) => Iphone14ProMaxTwentyScreen(),
    iphone14ProMaxTwentyoneScreen: (context) => Iphone14ProMaxTwentyoneScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
