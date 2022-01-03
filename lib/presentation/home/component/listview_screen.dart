// ignore_for_file: must_be_immutable, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:tranthiphuongloan_qlttll_flutter/model/manager.dart';
import 'package:tranthiphuongloan_qlttll_flutter/widget/widget.dart';

class ListViewScreen extends StatelessWidget {
  int index;
  Manager mana;
  ListViewScreen({Key? key, required this.index, required this.mana})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.orange.shade200),
          borderRadius: BorderRadius.circular(15),
        ),
        padding: EdgeInsets.all(10),
        child: Container(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ItemWidget(
                  title: "Tên: ",
                  name: "${mana.name}",
                  fontSize: 20,
                ),
                ItemWidget(
                  title: "Giới tính: ",
                  name: "${mana.gender}",
                  fontSize: 18,
                ),
                ItemWidget(
                  title: "Ngày sinh: ",
                  name: " ${mana.date}",
                  fontSize: 18,
                ),
              ]),
        ));
  }
}
