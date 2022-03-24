import 'package:flutter/material.dart';
import 'package:nguyenvanminhnhat_qldb_flutter/presentation/login/component/body.dart';
import 'package:nguyenvanminhnhat_qldb_flutter/presentation/login/component/header.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _build(),
      ),
    );
  }

  Widget _build() {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [Header(), Body()],
        ),
      ),
    );
  }
}
