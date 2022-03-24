import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nguyenvanminhnhat_qldb_flutter/config/config.dart';
import 'package:nguyenvanminhnhat_qldb_flutter/presentation/change/component/input_change.dart';

class ChangeScreen extends StatelessWidget {
  const ChangeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Chỉnh sửa thông tin'),
        ),
        body: _buildBody(context));
  }

  Widget _buildBody(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 5),
            child: CircleAvatar(
                radius: (50),
                backgroundColor: Colors.white,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(180),
                  child: Image.asset(
                    IMAGE_ANH4,
                    fit: BoxFit.fitWidth,
                    width: Get.width,
                  ),
                )),
          ),
          SizedBox(
            height: 20,
          ),
          InputChange(),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(left: 40, right: 40),
            width: Get.width,
            child: ElevatedButton(
              onPressed: () {
                showAlertDialog(context);
              },
              child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(6)),
                  child: Text(
                    "Cập nhật",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )),
            ),
          )
        ],
      ),
    );
  }

  showAlertDialog(BuildContext context) {
    // set up the buttons
    Widget cancelButton = TextButton(
      child: Text("Không"),
      onPressed: () {},
    );
    Widget continueButton = TextButton(
      child: Text("Có"),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Thông báo chỉnh sửa"),
      content: Text("Bạn có muốn chỉnh sửa thông tin này không?"),
      actions: [
        cancelButton,
        continueButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
