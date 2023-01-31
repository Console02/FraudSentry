import 'package:flutter/material.dart';
import 'package:fraudsentry/main.dart';

class Utils {
  showSnackbar(String? text) {
    if (text == null) return;

    final snackBar = SnackBar(
      content: Text(text),
      backgroundColor: const Color(0xFF00AFB9),
    );

    messengerKey.currentState!
      ..removeCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}
