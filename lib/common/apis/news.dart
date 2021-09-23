import 'package:demo_getx/common/entity/news.dart';
import 'package:demo_getx/common/utils/http.dart';

/// 新闻
class NewsAPI {
  /// 翻页
  static Future<NewsPageListResponseEntity> newsPageList(
      {NewsRecommendRequestEntity? param}) async {
    var response = await HttpUtil().get(
      '/news',
      queryParameters: param?.toJson(),
    );
    return NewsPageListResponseEntity.fromJson(response);
  }
}
