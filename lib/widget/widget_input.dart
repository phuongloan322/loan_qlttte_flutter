import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  String? hintText;
  IconButton? suffixIcon;

  Icon? icon;
  TextInputType? textInputType;
  bool obsureText;

  InputWidget(
      {Key? key,
      this.textInputType,
      this.hintText,
      this.icon,
      this.suffixIcon,
      required this.obsureText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 40, right: 40),
      height: 50,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 1),
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(9)),
      child: TextFormField(
        obscureText: obsureText,
        keyboardType: textInputType,
        style: TextStyle(color: Colors.white, fontSize: 20),
        decoration: InputDecoration(
          icon: icon,
          suffixIcon: suffixIcon,
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.white),
          border: InputBorder.none,
          fillColor: Colors.grey,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
        ),
      ),
    );
  }
}
