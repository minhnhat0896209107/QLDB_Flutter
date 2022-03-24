import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nguyenvanminhnhat_qldb_flutter/config/config.dart';
import 'package:nguyenvanminhnhat_qldb_flutter/model/directory.dart';
import 'package:nguyenvanminhnhat_qldb_flutter/presentation/change/change_screen.dart';
import 'package:nguyenvanminhnhat_qldb_flutter/presentation/detail/component/display_infor.dart';
import 'package:nguyenvanminhnhat_qldb_flutter/presentation/detail/component/show_dialog.dart';
import 'package:nguyenvanminhnhat_qldb_flutter/widget/widget_input_information.dart';

class DetailScreen extends StatefulWidget {
  int index;
  DetailScreen({Key? key, required this.index}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  String answer = "?";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Thông tin chi tiết"),
      ),
      body: Container(
        color: Colors.blue[50],
        child: Center(
            child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              child: CircleAvatar(
                  radius: (50),
                  backgroundColor: Colors.white,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(180),
                    child: Image.asset(
                      direct[widget.index].image != null
                          ? "${direct[widget.index].image}"
                          : "assets/images/null.png",
                      fit: BoxFit.fitWidth,
                      width: Get.width,
                    ),
                  )),
            ),
            SizedBox(
              height: 30,
            ),
            DisplayInfor(index: widget.index),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChangeScreen()));
                    },
                    child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(6)),
                        child: Text(
                          "Chỉnh sửa",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      showAlertDialog(context);
                    },
                    child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(6)),
                        child: Text(
                          "Xóa",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )),
                  )
                ],
              ),
            )
          ],
        )),
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
      title: Text("Thông báo xóa"),
      content: Text("Bạn có muốn xóa thông tin này không?"),
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
