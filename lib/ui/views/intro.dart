import 'package:e_commerce/models/intro.dart';
import 'package:e_commerce/ui/route/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intro_screen_onboarding_flutter/intro_app.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: IntroScreenOnboarding(
        backgroudColor: Colors.transparent,
        foregroundColor: Colors.orange,
        onTapSkipButton: () {
          Get.toNamed(login);
        },
        introductionList: IntroData.map(
          (e) => Introduction(
            imageUrl: e.image,
            title: e.title,
            subTitle: e.description,
            imageHeight: 200.h,
            titleTextStyle:
                TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
            subTitleTextStyle:
                TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w300),
          ),
        ).toList(),
      )),
    );
  }
}
