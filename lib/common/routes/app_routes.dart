part of 'app_pages.dart';

abstract class AppRoutes {
  static const Home = '/home';
  static const List = '/list';
  static const Detail = '/detail';
  static const Detail_Id = '/detail/:id';
  static const Login = '/login';
  static const My = '/my';
  static const NotFound = '/notfound';
  static const NestedNavigator = '/nested_navigator';
  static const Theme = '/theme';

  // 狀態
  static const State = '/obx';
  static const Obx = '/obx';
  static const ValueBuilder = '/value_builder';
  static const Getx = '/getx';
  static const GetBuilder = '/get_builder';
  static const Workers = '/workers';

  // 依赖注入
  static const Dependency = '/dependency';
  static const DependencyPutFind = '/dependency_put_find';
  static const DependencyLazyPut = '/dependency_lazy_put';  

  // Count
  static const Count = '/count';

  // GetxService
  static const Service = '/service';

  // GetConnect
  static const GetConnect = '/get_connect';
  static const GetConnectStateMixin = '/get_connect_state_mixin';

  // 控制器 + dio
  static const GetControllerDio = '/get_controller_dio';

  // 多语言
  static const Lang = '/lang';
}
