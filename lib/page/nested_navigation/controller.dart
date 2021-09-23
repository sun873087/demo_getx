import 'package:demo_getx/page/list_detail/index.dart';
import 'package:demo_getx/page/login/index.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class NestedController extends GetxController {
  static NestedController get to => Get.find();

  var currentIndex = 0.obs;

  final pages = <String>['/list', '/detail', '/login'];

  void changePage(int index) {
    currentIndex.value = index;
    Get.toNamed(pages[index], id: 1);
  }

  Route? onGenerateRoute(RouteSettings settings) {
    if (settings.name == '/login')
      return GetPageRoute(
        settings: settings,
        page: () => LoginView(),
        transition: Transition.topLevel,
      );
    else if (settings.name == '/list')
      return GetPageRoute(
        settings: settings,
        page: () => ListView(),
        transition: Transition.rightToLeftWithFade,
      );
    else if (settings.name == '/detail')
      return GetPageRoute(
        settings: settings,
        page: () => DetailView(),
        transition: Transition.fadeIn,
      );

    return null;
  }
}
