import 'package:demo_getx/common/utils/base_provider.dart';
import 'package:get/get.dart';

abstract class INewsProvider {
  Future<Response> getNews();
}

class NewsStateMixinProvider extends BaseProvider implements INewsProvider {
  // 新闻分页
  @override
  Future<Response> getNews() => get("/news");
}
