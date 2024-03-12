import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../route/route.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_login_button.dart';
import '../../widgets/custom_textfield.dart';

class Registration extends StatelessWidget {
  Registration({super.key});
  TextEditingController _emailController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  RxBool _value = false.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.always,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 80,
                  ),
                  Image.asset(
                    'asset/icons/logo.png',
                    width: 40.w,
                  ),
                  Text("Log in",
                      style: TextStyle(
                          fontSize: 16.sp, fontWeight: FontWeight.w600)),
                  SizedBox(
                    height: 15,
                  ),
                  customFormField(
                      TextInputType.name, _nameController, context, "Name",
                      (val) {
                    if (val.isEmpty) {
                      return 'this field can\'t be empty';
                    }
                  }, prefixIcon: Icons.person),
                  customFormField(TextInputType.emailAddress, _emailController,
                      context, "Email", (val) {
                    if (val.isEmpty) {
                      return 'this field can\'t be empty';
                    }
                    if (!val.contains(RegExp(r'\@'))) {
                      return 'enter a valid email address';
                    }
                  }, prefixIcon: Icons.email),
                  customFormField(
                    TextInputType.visiblePassword,
                    _passwordController,
                    context,
                    "Password",
                    (val) {
                      if (val.isEmpty) {
                        return 'this field can\'t be empty';
                      }
                    },
                    prefixIcon: Icons.remove_red_eye_outlined,
                  ),
                  Row(
                    children: [
                      Obx(
                        () => Checkbox(
                            value: _value.value,
                            onChanged: (val) {
                              _value.value = val!;
                            }),
                      ),
                      Text.rich(TextSpan(children: [
                        TextSpan(
                            text: 'I accept all the',
                            style: TextStyle(color: Colors.grey)),
                        TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => Get.toNamed(condition_t),
                            text: ' Terms & Condition',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600)),
                      ]))
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                      width: 150.w,
                      height: 40.h,
                      child: customButton(
                        "Sign Up",
                        () {
                          if (_formKey.currentState!.validate()) {
                            print("done");
                          } else {
                            print('failed');
                          }
                        },
                      )),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Divider(
                        thickness: 1,
                        color: Colors.black,
                      )),
                      Text("  OR  "),
                      Expanded(
                          child: Divider(
                        thickness: 1,
                        color: Colors.black,
                      )),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Custom_Login_button(
                          Image.asset("asset/icons/facebook.png")),
                      SizedBox(
                        width: 10,
                      ),
                      Custom_Login_button(
                          Image.asset("asset/icons/search.png")),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text.rich(TextSpan(children: [
                    TextSpan(
                        text: "Already have in account?",
                        style: TextStyle(color: Colors.grey)),
                    TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Get.toNamed(login),
                        text: " Log in",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w700))
                  ]))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
