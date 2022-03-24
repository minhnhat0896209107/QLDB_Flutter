import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nguyenvanminhnhat_qldb_flutter/config/config.dart';
import 'package:nguyenvanminhnhat_qldb_flutter/presentation/register/component/back_login.dart';
import 'package:nguyenvanminhnhat_qldb_flutter/presentation/register/component/input_register.dart';
import 'package:nguyenvanminhnhat_qldb_flutter/widget/widget.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          InputRegister(),
          Container(
            child: GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.only(top: 10, left: 40, right: 40),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                padding: EdgeInsets.all(15),
                child: Container(
                  width: Get.width,
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: Center(
                    child: Text(
                      REGISTER,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          ),
          BackLogin()
        ],
      ),
    );
  }
}
