import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget customButton(String title, onprased) {
  return ElevatedButton(
      onPressed: onprased,
      child: Text(title),
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.red
    ),

  );
}
