import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:joo_s_application3/routes/app_routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        visualDensity: VisualDensity.standard,
      ),
      title: 'joo_s_application3',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.iphone14ProMaxZeroScreen,
      routes: AppRoutes.routes,
    );
  }
}
