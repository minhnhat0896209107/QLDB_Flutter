import 'package:flutter/material.dart';
import 'package:nguyenvanminhnhat_qldb_flutter/widget/widget.dart';

class InputLogin extends StatefulWidget {
  const InputLogin({Key? key}) : super(key: key);

  @override
  _InputLoginState createState() => _InputLoginState();
}

class _InputLoginState extends State<InputLogin> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          InputWidget(
            obsureText: false,
            textInputType: TextInputType.text,
            hintText: "Input email",
            icon: Icon(
              Icons.email_outlined,
              color: Colors.blue,
              size: 30,
            ),
          ),
          InputWidget(
            obsureText: _isObscure,
            suffixIcon: IconButton(
                icon: Icon(
                  _isObscure ? Icons.visibility : Icons.visibility_off,
                  color: Colors.blue,
                ),
                onPressed: () {
                  setState(() {
                    _isObscure = !_isObscure;
                  });
                }),
            textInputType: TextInputType.visiblePassword,
            hintText: "Input password",
            icon: Icon(
              Icons.lock_outline,
              color: Colors.blue,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
