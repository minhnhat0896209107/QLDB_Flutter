import 'package:flutter/material.dart';
import 'package:nguyenvanminhnhat_qldb_flutter/config/config.dart';

class NewLogin extends StatelessWidget {
  const NewLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            IMAGE_GOOGLE,
            width: 40,
            height: 40,
          ),
          Image.asset(
            IMAGE_FACEBOOK,
            width: 40,
            height: 40,
          ),
          Image.asset(
            IMAGE_TWITTER,
            width: 40,
            height: 40,
          ),
        ],
      ),
    );
  }
}
