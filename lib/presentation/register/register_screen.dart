import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nguyenvanminhnhat_qldb_flutter/config/config.dart';
import 'package:nguyenvanminhnhat_qldb_flutter/widget/widget_input.dart';

import 'component/body.dart';
import 'component/head.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _build(),
    );
  }

  Widget _build() {
    return SingleChildScrollView(
      child: Container(
        height: Get.height,
        color: Colors.white70,
        child: Column(
          children: [Head(), Body()],
        ),
      ),
    );
  }
}
