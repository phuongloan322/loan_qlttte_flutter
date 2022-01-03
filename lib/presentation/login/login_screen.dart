// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:tranthiphuongloan_qlttll_flutter/presentation/home/home_screen.dart';
import 'package:tranthiphuongloan_qlttll_flutter/presentation/login/component/input_login.dart';
import 'package:tranthiphuongloan_qlttll_flutter/presentation/login/component/new_login.dart';
import 'package:tranthiphuongloan_qlttll_flutter/presentation/login/component/remember.dart';
import 'package:tranthiphuongloan_qlttll_flutter/values/values.dart';
import 'package:tranthiphuongloan_qlttll_flutter/widget/widget_input.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: Get.height,
            child: Image.asset(
              IMAGE_BACKGROUND,
              height: Get.height,
              width: Get.width,
              fit: BoxFit.fill,
            ),
          ),
          SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: Get.height * 0.15),
                    child: const Text(
                      LOGIN,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    height: Get.height * 0.1,
                  ),
                  const InputLogin(),
                  const Remember(),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ));
                    },
                    child: Container(
                      margin:
                          const EdgeInsets.only(top: 40, left: 40, right: 40),
                      decoration: BoxDecoration(
                          color: Colors.orange[300],
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      padding: EdgeInsets.all(15),
                      child: Container(
                        width: Get.width,
                        padding: EdgeInsets.only(left: 30, right: 30),
                        child: Center(
                          child: Text(
                            LOGIN,
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 40, right: 40, top: 30),
                    color: Colors.white,
                    height: 2,
                    width: Get.width,
                  ),
                  const NewLogin()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
