import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailView extends StatelessWidget {
  const DetailView({Key? key}) : super(key: key);

  _buildBackListTileRow(Map? val) {
    return val == null
        ? Container()
        : ListTile(
            title: Text("傳值 id =" + val["id"].toString()),
            subtitle: Text("Get.back(result: {'success': true})"),
            onTap: () => Get.back(result: {'success': true}),
          );
  }

  @override
  Widget build(BuildContext context) {
    final details = Get.arguments as Map;
    final parameters = Get.parameters;
    
    return Scaffold(
      appBar: AppBar(
        title: Text("詳情頁"),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("導航 - 返回"),
            subtitle: Text("Get.back()"),
            onTap: () => Get.back(result: {"success": false}),
          ),
          _buildBackListTileRow(details),
          _buildBackListTileRow(parameters)
        ],
      ),
    );
  }
}
