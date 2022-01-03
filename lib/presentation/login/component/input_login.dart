// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:tranthiphuongloan_qlttll_flutter/values/app_values.dart';
import 'package:tranthiphuongloan_qlttll_flutter/widget/widget.dart';

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
            hintText: INPUT_USERNAME,
            icon: const Icon(
              Icons.person_outline,
              color: Colors.white,
              size: 30,
            ),
            textInputType: TextInputType.text,
          ),
          InputWidget(
            obsureText: _isObscure,
            icon: const Icon(
              Icons.lock_outline,
              color: Colors.white,
              size: 30,
            ),
            suffixIcon: IconButton(
                icon: Icon(
                  _isObscure ? Icons.visibility : Icons.visibility_off,
                  color: Colors.white,
                ),
                onPressed: () {
                  setState(() {
                    _isObscure = !_isObscure;
                  });
                }),
            textInputType: TextInputType.visiblePassword,
            hintText: INPUT_PASS,
          ),
        ],
      ),
    );
  }
}
