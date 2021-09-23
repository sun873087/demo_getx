import 'package:demo_getx/common/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyView extends StatelessWidget {
  const MyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我的"),
      ),
      body: ListTile(
        title: Text("返回首頁"),
        subtitle: Text(""),
        onTap: () => Get.offAllNamed(AppRoutes.Home),
      ),
    );
  }
}
