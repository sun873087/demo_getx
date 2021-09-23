

import 'package:demo_getx/common/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("登入"),
      ),
      body: ListTile(
        title: Text("返回首頁"),
        subtitle: Text("Get.offAllNamed(AppRoutes.Home)"),
        onTap: ()=> Get.offAllNamed(AppRoutes.Home),
      ),
    );
  }
}