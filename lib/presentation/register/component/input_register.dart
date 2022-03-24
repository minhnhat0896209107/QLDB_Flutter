import 'package:flutter/material.dart';
import 'package:nguyenvanminhnhat_qldb_flutter/widget/widget.dart';

class InputRegister extends StatefulWidget {
  const InputRegister({Key? key}) : super(key: key);

  @override
  State<InputRegister> createState() => _InputRegisterState();
}

class _InputRegisterState extends State<InputRegister> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          InputWidget(
            obsureText: false,
            hintText: "Input username",
            textInputType: TextInputType.text,
            icon: Icon(
              Icons.person_outline,
              color: Colors.blue,
              size: 30,
            ),
          ),
          InputWidget(
            obsureText: false,
            hintText: "Input email",
            textInputType: TextInputType.text,
            icon: Icon(
              Icons.email_outlined,
              color: Colors.blue,
              size: 30,
            ),
          ),
          InputWidget(
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
            obsureText: _isObscure,
            hintText: "Input password",
            textInputType: TextInputType.text,
            icon: Icon(
              Icons.lock_outline,
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
            hintText: "Input password again",
            textInputType: TextInputType.text,
            icon: Icon(
              Icons.lock_outline,
              color: Colors.blue,
              size: 30,
            ),
          ),
          InputWidget(
            obsureText: false,
            hintText: "Input address",
            textInputType: TextInputType.text,
            icon: Icon(
              Icons.location_city_outlined,
              color: Colors.blue,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
