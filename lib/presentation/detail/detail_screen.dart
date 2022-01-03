// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tranthiphuongloan_qlttll_flutter/model/manager.dart';

import 'component/display_screen.dart';

class DetailScreen extends StatefulWidget {
  int index;
  DetailScreen({Key? key, required this.index}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  String answer = "?";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Thông tin chi tiết"),
      ),
      body: Container(
        color: Colors.orange[50],
        child: Center(
            child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              child: CircleAvatar(
                  radius: (50),
                  backgroundColor: Colors.white,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(180),
                    child: Image.asset(
                      "${manager[widget.index].image}",
                      fit: BoxFit.cover,
                      height: Get.height,
                      width: Get.width,
                    ),
                  )),
            ),
            SizedBox(
              height: 30,
            ),
            Display(index: widget.index),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      showAlertDialogChange(context);
                    },
                    child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(6)),
                        child: Text(
                          "Chỉnh sửa",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )),
                  ),
                  GestureDetector(
                    onTap: () {
                      showAlertDialog(context);
                    },
                    child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(6)),
                        child: Text(
                          "Xóa",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )),
                  )
                ],
              ),
            )
          ],
        )),
      ),
    );
  }

  showAlertDialog(BuildContext context) {
    // set up the buttons
    Widget cancelButton = TextButton(
      child: Text("Không"),
      onPressed: () {
        Navigator.pop(context);
      },
    );
    Widget continueButton = TextButton(
      child: Text("Có"),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Thông báo xóa"),
      content: Text("Bạn có muốn xóa thông tin này không?"),
      actions: [
        cancelButton,
        continueButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  showAlertDialogChange(BuildContext context) {
    // set up the buttons
    Widget cancelButton = TextButton(
      child: Text("Không"),
      onPressed: () {
        Navigator.pop(context);
      },
    );
    Widget continueButton = TextButton(
      child: Text("Có"),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Thông báo chỉnh sửa"),
      content: Text("Bạn có muốn chỉnh sửa thông tin này không?"),
      actions: [
        cancelButton,
        continueButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
