import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nguyenvanminhnhat_qldb_flutter/config/config.dart';
import 'package:nguyenvanminhnhat_qldb_flutter/presentation/home/home_screen.dart';
import 'package:nguyenvanminhnhat_qldb_flutter/presentation/login/component/new_login.dart';
import 'package:nguyenvanminhnhat_qldb_flutter/presentation/nav/navigation.dart';
import 'component.dart';

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
          CircleAva(),
          InputLogin(),
          Remember(),
          Container(
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Navigation()));
              },
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
                      LOGIN,
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
          CreateAccount(),
          Container(
            margin: EdgeInsets.only(left: 40, right: 40, top: 25),
            color: Colors.black,
            height: 1,
            width: Get.width,
          ),
          NewLogin()
        ],
      ),
    );
  }
}
