import 'package:flutter/material.dart';
import 'package:nguyenvanminhnhat_qldb_flutter/config/config.dart';
import 'package:nguyenvanminhnhat_qldb_flutter/presentation/login/login_screen.dart';

class BackLogin extends StatelessWidget {
  const BackLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.topLeft,
        margin: EdgeInsets.only(left: 40, top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(I_HAVE_ACCOUNT,
                style: TextStyle(color: Colors.black, fontSize: 20)),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              child: Container(
                margin: EdgeInsets.only(left: 5),
                child: Text(LOGIN,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: 20)),
              ),
            )
          ],
        ));
  }
}
