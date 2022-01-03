// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tranthiphuongloan_qlttll_flutter/values/values.dart';

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
            width: 50,
            height: 50,
          ),
          Image.asset(
            IMAGE_FACEBOOK,
            width: 50,
            height: 50,
          ),
        ],
      ),
    );
  }
}
