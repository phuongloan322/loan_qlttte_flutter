import 'package:flutter/material.dart';

class InputInforWidget extends StatelessWidget {
  String title, name;
  InputInforWidget({Key? key, required this.title, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 40, right: 40),
      child: Card(
        margin: EdgeInsets.all(5),
        elevation: 5,
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  title,
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
              Expanded(
                child: Container(
                  child: Text(
                    name,
                    maxLines: 2,
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
