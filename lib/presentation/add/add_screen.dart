import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tranthiphuongloan_qlttll_flutter/values/app_image.dart';

import 'component/input.dart';

class AddScreen extends StatelessWidget {
  const AddScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Thêm thông tin'),
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: Get.height,
        color: Colors.orange[100],
        child: Center(
            child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Text(
                    "Tải ảnh từ điện thoại",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                child: CircleAvatar(
                    radius: (50),
                    backgroundColor: Colors.white,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(180),
                      child: Image.asset(
                        IMAGE_ANH10,
                        fit: BoxFit.fitWidth,
                        width: Get.width,
                      ),
                    )),
              ),
            ],
          ),
          const Input(),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              showAlertDialog(context);
            },
            child: Container(
                margin: EdgeInsets.only(left: 40, right: 40),
                alignment: Alignment.center,
                width: Get.width,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6)),
                child: const Text(
                  "Thêm",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                )),
          ),
        ])),
      ),
    );
  }

  showAlertDialog(BuildContext context) {
    // set up the buttons
    Widget cancelButton = TextButton(
      child: const Text("Không"),
      onPressed: () {
        Navigator.pop(context);
      },
    );
    Widget continueButton = TextButton(
      child: const Text("Có"),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text("Thông báo thêm"),
      content: const Text("Bạn có muốn thêm thông tin này không?"),
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
