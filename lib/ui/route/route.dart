import 'package:e_commerce/ui/views/authentication/forget.dart';
import 'package:e_commerce/ui/views/authentication/login.dart';
import 'package:e_commerce/ui/views/authentication/registration.dart';
import 'package:e_commerce/ui/views/bottom_navigation.dart';
import 'package:e_commerce/ui/views/condition.dart';
import 'package:e_commerce/ui/views/intro.dart';
import 'package:e_commerce/ui/views/not_found.dart';
import 'package:e_commerce/ui/views/splash_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

const String splash = '/splash-screen';
const String unknown = '/not-found';
const String intro = '/intro';
const String login = '/login';
const String forget = '/forget_password';
const String signup = '/Registration';
const String condition_t = '/Terms & condition';
const String bottom_navi = '/bottom_navigationbar';

List<GetPage> getpages = [
  GetPage(name: unknown, page: () => UnKnown()),
  GetPage(name: splash, page: () => Splash_Screen()),
  GetPage(name: intro, page: () => Intro()),
  GetPage(name: login, page: () => Login()),
  GetPage(name: forget, page: () => Forget_Password()),
  GetPage(name: signup, page: () => Registration()),
  GetPage(name: condition_t, page: () => Terms_condition()),
  GetPage(name: bottom_navi, page: () => Bottom_Navi()),
];
