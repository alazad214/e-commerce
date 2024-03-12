import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget Custom_Login_button(final image) {
  return Ink(
    height: 70,
    width: 70,
    decoration:
        BoxDecoration(color: Colors.white, shape: BoxShape.circle, boxShadow: [
      BoxShadow(
          color: Colors.black12,
          spreadRadius: 5,
          blurRadius: 7,
          offset: Offset(0, 3))
    ]),
    child: Padding(padding: EdgeInsets.all(10), child: image),
  );
}
