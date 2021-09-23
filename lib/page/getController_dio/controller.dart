import 'package:demo_getx/common/apis/news.dart';
import 'package:demo_getx/common/entity/news.dart';
import 'package:get/get.dart';

class NewsDioController extends GetxController {
  var newsPageList =
      Rx<NewsPageListResponseEntity>(NewsPageListResponseEntity());

  @override
  void onInit() {
    super.onInit();
    print("onInit");
  }

  @override
  void onClose() {
    super.onClose();
    print("onClose");
  }

  getPageList() async {
    newsPageList.value = await NewsAPI.newsPageList();
  }
}
