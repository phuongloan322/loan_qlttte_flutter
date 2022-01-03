import 'package:flutter/material.dart';
import 'package:tranthiphuongloan_qlttll_flutter/widget/widget.dart';
import 'package:tranthiphuongloan_qlttll_flutter/widget/widget_input_add.dart';

class Input extends StatelessWidget {
  const Input({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          InputWidgetAdd(
            obsureText: false,
            hintText: 'Id',
            icon: const Icon(
              Icons.insert_drive_file,
              size: 40,
              color: Colors.black54,
            ),
            textInputType: TextInputType.text,
          ),
          InputWidgetAdd(
            obsureText: false,
            hintText: 'Họ và tên',
            icon: const Icon(
              Icons.person,
              size: 40,
              color: Colors.black54,
            ),
            textInputType: TextInputType.text,
          ),
          InputWidgetAdd(
            obsureText: false,
            hintText: 'Ngày sinh',
            icon: const Icon(
              Icons.date_range_outlined,
              size: 40,
              color: Colors.black54,
            ),
            textInputType: TextInputType.text,
          ),
          InputWidgetAdd(
            obsureText: false,
            hintText: 'Giới tính',
            icon: const Icon(
              Icons.transgender_outlined,
              size: 40,
              color: Colors.black54,
            ),
            textInputType: TextInputType.text,
          ),
          InputWidgetAdd(
            obsureText: false,
            hintText: 'Địa chỉ',
            icon: const Icon(
              Icons.location_city,
              size: 40,
              color: Colors.black54,
            ),
            textInputType: TextInputType.text,
          ),
        ],
      ),
    );
  }
}
