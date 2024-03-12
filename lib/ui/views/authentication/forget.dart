import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/custom_button.dart';
import '../../widgets/custom_textfield.dart';

class Forget_Password extends StatelessWidget {
  Forget_Password({super.key});
  TextEditingController _emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
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
                Text("Forget Password?",
                    style: TextStyle(
                        fontSize: 16.sp, fontWeight: FontWeight.w600)),
                SizedBox(
                  height: 15,
                ),
                customFormField(TextInputType.emailAddress, _emailController,
                    context, "Email", (val) {
                  if (val.isEmpty) {
                    return 'this field can\'t be empty';
                  }
                  if (!val.contains(RegExp(r'\@'))) {
                    return 'enter a valid email address';
                  }
                }, prefixIcon: Icons.email),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                    width: 150.w,
                    height: 40.h,
                    child: customButton(
                      "Continue",
                      () {
                        if (_formKey.currentState!.validate()) {
                          print("done");
                        } else {
                          print('failed');
                        }
                      },
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
