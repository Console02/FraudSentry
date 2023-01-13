import 'dart:html';

import 'package:flutter/material.dart';

class my_profile extends StatefulWidget {
  const my_profile({Key? key}) : super(key: key);

  @override
  State<my_profile> createState() => _my_profileState();
}

class _my_profileState extends State<my_profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile"),
      ),
    );
  }
}
