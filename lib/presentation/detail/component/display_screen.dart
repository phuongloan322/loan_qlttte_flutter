// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:tranthiphuongloan_qlttll_flutter/model/manager.dart';
import 'package:tranthiphuongloan_qlttll_flutter/widget/widget_info.dart';


class Display extends StatelessWidget {
  int index;
  Display({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          InputInforWidget(
            title: "Id :",
            name: "${manager[index].id}",
          ),
          InputInforWidget(
            title: "Tên :",
            name: "${manager[index].name}",
          ),
          InputInforWidget(
            title: "Thông tin :",
            name: "${manager[index].date}",
          ),
          InputInforWidget(
            title: "email :",
            name: "${manager[index].gender}",
          ),
          InputInforWidget(
            title: "Địa chỉ :",
            name: "${manager[index].address}",
          ),

        ],
      ),
    );
  }
}
