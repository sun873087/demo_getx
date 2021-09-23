import 'package:demo_getx/common/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RouteAuthMiddleware extends GetMiddleware {
  @override
  int? priority = 0;

  RouteAuthMiddleware({required this.priority});

  @override
  RouteSettings? redirect(String? route) {
    // 本區可增加業務，如沒有登入去"登入頁"
    Future.delayed(Duration(seconds: 1), () => Get.snackbar("提示", "请先登入APP"));
    return RouteSettings(name: AppRoutes.Login);
  }
}