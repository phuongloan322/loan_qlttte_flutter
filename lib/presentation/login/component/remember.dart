// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tranthiphuongloan_qlttll_flutter/values/values.dart';

class Remember extends StatefulWidget {
  const Remember({Key? key}) : super(key: key);

  @override
  _RememberState createState() => _RememberState();
}

class _RememberState extends State<Remember> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    Color? getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.red;
      }
      return Colors.white;
    }

    return Container(
      child: Row(
        children: [
          Container(
              margin: EdgeInsets.only(left: 30),
              alignment: Alignment.topLeft,
              child: Checkbox(
                checkColor: Colors.orange[300],
                fillColor: MaterialStateProperty.resolveWith(getColor),
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
              )),
          Container(
            child: Text(REMEMBER,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                )),
          )
        ],
      ),
    );
  }
}
