import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nguyenvanminhnhat_qldb_flutter/config/values/app_values.dart';
import 'package:nguyenvanminhnhat_qldb_flutter/presentation/register/register_screen.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.topLeft,
        margin: EdgeInsets.only(left: 40, top: 20),
        child: Row(
          children: [
            Text(DONT_HAVE_ACCOUNT,
                style: TextStyle(color: Colors.black, fontSize: 18)),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RegisterScreen()));
              },
              child: Container(
                child: Text(REGISTER,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: 18)),
              ),
            )
          ],
        ));
  }
}
