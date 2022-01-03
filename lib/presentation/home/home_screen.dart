// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, unnecessary_this

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tranthiphuongloan_qlttll_flutter/model/manager.dart';
import 'package:tranthiphuongloan_qlttll_flutter/presentation/add/add_screen.dart';
import 'package:tranthiphuongloan_qlttll_flutter/presentation/detail/detail_screen.dart';
import 'package:tranthiphuongloan_qlttll_flutter/presentation/home/component/listview_screen.dart';
import 'package:tranthiphuongloan_qlttll_flutter/widget/widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late List<Manager> listManager;
  String query = '';

  @override
  void initState() {
    super.initState();

    listManager = manager;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Danh sách thông tin trẻ em"),
      ),
      body: _build(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return AddScreen();
            },
          ));
        },
        backgroundColor: Colors.orange[300],
        child: Container(child: Icon(Icons.add_outlined, size: 35)),
      ),
    );
  }

  Widget _build() {
    return Card(
      color: Colors.orange[50],
      elevation: 10.0,
      child: Column(
        children: [
          _buildSearch(),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: listManager.length,
              itemBuilder: (context, index) {
                final list = listManager[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailScreen(index: index)));
                  },
                  child: ListViewScreen(
                    index: index,
                    mana: list,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSearch() => SearchWidget(
        text: query,
        hintText: 'Tìm kiếm theo tên hoặc email',
        onChanged: searchDirect,
      );

  void searchDirect(String query) {
    final mn = manager.where((element) {
      final nameLower = element.name?.toLowerCase();
      final searchLower = query.toLowerCase();

      return nameLower!.contains(searchLower);
    }).toList();
    setState(() {
      this.query = query;
      this.listManager = mn;
    });
  }
}
