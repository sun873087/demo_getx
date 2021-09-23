import 'package:demo_getx/common/middleware/router_auth.dart';
import 'package:demo_getx/page/counter/bindings.dart';
import 'package:demo_getx/page/counter/index.dart';
import 'package:demo_getx/page/dependency_lazyPut/bindings.dart';
import 'package:demo_getx/page/dependency_lazyPut/index.dart';
import 'package:demo_getx/page/dependency_put_find/index.dart';
import 'package:demo_getx/page/getConnect/bindings.dart';
import 'package:demo_getx/page/getConnect/view.dart';
import 'package:demo_getx/page/getConnect_stateMixin/bindings.dart';
import 'package:demo_getx/page/getConnect_stateMixin/view.dart';
import 'package:demo_getx/page/getController_dio/bindings.dart';
import 'package:demo_getx/page/getController_dio/view.dart';
import 'package:demo_getx/page/home/index.dart';
import 'package:demo_getx/page/lang/index.dart';
import 'package:demo_getx/page/list/index.dart';
import 'package:demo_getx/page/list_detail/index.dart';
import 'package:demo_getx/page/login/index.dart';
import 'package:demo_getx/page/my/index.dart';
import 'package:demo_getx/page/nested_navigation/binding.dart';
import 'package:demo_getx/page/nested_navigation/index.dart';
import 'package:demo_getx/page/notfound/index.dart';
import 'package:demo_getx/page/service_view/index.dart';
import 'package:demo_getx/page/state_getBuilder/index.dart';
import 'package:demo_getx/page/state_getx/index.dart';
import 'package:demo_getx/page/state_obx/index.dart';
import 'package:demo_getx/page/state_valueBuilder/index.dart';
import 'package:demo_getx/page/state_workers/index.dart';
import 'package:demo_getx/page/theme/index.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = AppRoutes.Home;

  // 路由
  static final routes = [
    // 白名單
    GetPage(
      name: AppRoutes.Login,
      page: () => LoginView(),
      transition: Transition.downToUp,
    ),
    GetPage(
        name: AppRoutes.My,
        page: () => MyView(),
        transition: Transition.downToUp,
        middlewares: [RouteAuthMiddleware(priority: 1)]),
    GetPage(
      name: AppRoutes.Home,
      page: () => HomeView(),
      children: [
        GetPage(
          name: AppRoutes.List,
          page: () => ListView(),
          children: [
            GetPage(
              name: AppRoutes.Detail,
              page: () => DetailView(),
            ),
            GetPage(name: AppRoutes.Detail_Id, page: () => DetailView())
          ],
        ),
      ],
    ),
    // 嵌套導航
    GetPage(
        name: AppRoutes.NestedNavigator,
        page: () => NestedNavView(),
        binding: NestedBinding()),
    // 主題
    GetPage(name: AppRoutes.Theme, page: () => ThemeView()),

    // 狀態 ValueBuilder
    GetPage(name: AppRoutes.State, page: () => StateObxView(), children: [
      GetPage(name: AppRoutes.Obx, page: () => StateObxView()),
      GetPage(
          name: AppRoutes.ValueBuilder, page: () => StateValueBuilderView()),
      GetPage(name: AppRoutes.Getx, page: () => StateGetxView()),
      GetPage(name: AppRoutes.GetBuilder, page: () => StateGetBuilderView()),
      GetPage(name: AppRoutes.Workers, page: () => StateWorkersView()),
    ]),

    // 依赖注入
    GetPage(
        name: AppRoutes.Dependency,
        page: () => StateDependencyPutFindView(),
        children: [
          GetPage(
              name: AppRoutes.DependencyPutFind,
              page: () => StateDependencyPutFindView()),
          GetPage(
              name: AppRoutes.DependencyLazyPut,
              binding: DependencyLazyPutBinding(),
              page: () => StateDependencyLazyPutView()),
        ]),

    // Count
    GetPage(
      name: AppRoutes.Count,
      page: () => CountPage(),
      binding: CountBinding(),
    ),

    // Service
    GetPage(name: AppRoutes.Service, page: () => ServiceView()),

    // GetConnect
    GetPage(
      name: AppRoutes.GetConnect,
      binding: NewsBinding(),
      page: () => NewsView(),
    ),
    GetPage(
      name: AppRoutes.GetConnectStateMixin,
      binding: NewsStateMixinBinding(),
      page: () => NewsStateMixinView(),
    ),

    // 控制器 + dio
    GetPage(
      name: AppRoutes.GetControllerDio,
      binding: NewsDioBinding(),
      page: () => NewsDioView(),
    ),

    // 多语言
    GetPage(name: AppRoutes.Lang, page: () => LangView()),

    // 其它
    GetPage(
      name: AppRoutes.Home,
      page: () => HomeView(),
      // binding: HomeBinding(),
      children: [
        GetPage(
          name: AppRoutes.List,
          page: () => ListView(),
          children: [
            GetPage(
              name: AppRoutes.Detail,
              page: () => DetailView(),
            ),
            GetPage(
              name: AppRoutes.Detail_Id,
              page: () => DetailView(),
              transition: Transition.downToUp,
            ),
          ],
        ),
      ],
    ),
  ];

  // 404
  static final unknownRoute = GetPage(
    name: AppRoutes.NotFound,
    page: () => NotfoundView(),
  );
}
