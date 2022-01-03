import 'package:tranthiphuongloan_qlttll_flutter/values/values.dart';

class Manager {
  String? id, name, date, gender, address, image;

  Manager({
    this.id,
    this.name,
    this.date,
    this.gender,
    this.address,
    this.image,
  });
}

final manager = <Manager>[
  Manager(
    id: "m01",
    name: "Trần Thị Phương Loan",
    date: "06/03/2015",
    gender: "Nữ",
    address: "Thừa Thiên Huế",
    image: IMAGE_ANH2,
  ),
  Manager(
    id: "m03",
    name: "Nguyễn Thị Khánh",
    date: "01/01/2015",
    gender: "Nữ",
    address: "Thừa Thiên Huế",
    image: IMAGE_ANH1,
  ),
  Manager(
    id: "m04",
    name: "Nguyễn Thị Bích Phượng",
    date: "01/09/2015",
    gender: "Nữ",
    address: "Đà Nẵng",
    image: IMAGE_ANH3,
  ),
  Manager(
    id: "m05",
    name: "Nguyễn Dũng",
    date: "09/09/2015",
    gender: "Nam",
    address: "Quảng Trị",
    image: IMAGE_ANH7,
  ),
  Manager(
    id: "m06",
    name: "Lê Thị Huyền",
    date: "21/07/2014",
    gender: "Nữ",
    address: "Thừa Thiên Huế",
    image: IMAGE_ANH4,
  ),
  Manager(
    id: "m07",
    name: "Nguyễn Văn A",
    date: "21/07/2000",
    gender: "Nam",
    address: "Thừa Thiên Huế",
    image: IMAGE_ANH8,
  ),
  Manager(
    id: "m08",
    name: "Trần Văn A",
    date: "21/07/2016",
    gender: "Nam",
    address: "Thừa Thiên Huế",
    image: IMAGE_ANH9,
  ),
  Manager(
    id: "m09",
    name: "Nguyễn Quang",
    date: "06/07/2012",
    gender: "Nam",
    address: "Thừa Thiên Huế",
    image: IMAGE_ANH10,
  ),
  Manager(
    id: "m01",
    name: "Lê Thị Dung",
    date: "22/03/2012",
    gender: "Nữ",
    address: "Thừa Thiên Huế",
    image: IMAGE_ANH5,
  ),
  Manager(
    id: "m02",
    name: "Nguyễn Văn Minh Nhật",
    date: "21/07/2017",
    gender: "Nam",
    address: "Thừa Thiên Huế",
    image: IMAGE_ANH6,
  ),
];
