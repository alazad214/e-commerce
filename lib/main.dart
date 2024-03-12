import 'package:e_commerce/ui/route/route.dart';
import 'package:e_commerce/ui/theme/apptheme.dart';
import 'package:e_commerce/ui/views/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppTheme().lighttheme(context),
          darkTheme: AppTheme().darktheme(context),
          themeMode: ThemeMode.light,
          getPages: getpages,
          initialRoute: splash,
          unknownRoute: getpages.first,
        );
      },
    );
  }
}
