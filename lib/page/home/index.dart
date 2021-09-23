import 'package:demo_getx/common/routes/app_pages.dart';
import 'package:demo_getx/page/list_detail/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      body: ListView(
        children: [
          // 路由&导航
          ListTile(
            title: Text("導航-命名路由 home > list"),
            subtitle: Text('Get.toNamed("/home/list")'),
            onTap: () => Get.toNamed("/home/list"),
          ),
          ListTile(
            title: Text("導航-命名路由 home > list > detail"),
            subtitle: Text('Get.toNamed("/home/list/detail")'),
            onTap: () => Get.toNamed("/home/list/detail"),
          ),
          ListTile(
            title: Text("導航-類對象"),
            subtitle: Text("Get.to(DetailView())"),
            onTap: () => Get.to(DetailView()),
          ),
          ListTile(
            title: Text("導航-清除上一個"),
            subtitle: Text("Get.off(DetailView())"),
            onTap: () => Get.off(DetailView()),
          ),
          ListTile(
            title: Text("導航-清除所有"),
            subtitle: Text("Get.offAll(DetailView())"),
            onTap: () => Get.offAll(DetailView()),
          ),
          Divider(),
          ListTile(
            title: Text("導航-arguments 傳值＋返回值"),
            subtitle: Text(
                "Get.toNamed('/home/list/detail', arguments: {'id': 999})"),
            onTap: () async {
              var result = await Get.toNamed("/home/list/detail",
                  arguments: {"id": 999});
              Get.snackbar("返回值", "success -> " + result["success"].toString());
            },
          ),
          ListTile(
            title: Text("導航-parameters 傳值＋返回值"),
            subtitle: Text("Get.toNamed(\"/home/list/detail?id=666\")"),
            onTap: () async {
              var result = await Get.toNamed("/home/list/detail?id=666");
              Get.snackbar(
                  "返回值", "succcess -> " + result["success"].toString());
            },
          ),
          ListTile(
            title: Text("導航-參數傳值＋返回值"),
            subtitle: Text("Get.toNamed(\"/home/list/detail/777\")"),
            onTap: () async {
              var result = await Get.toNamed("/home/list/detail/777");
              Get.snackbar("返回值", "success -> " + result["success"].toString());
            },
          ),
          ListTile(
            title: Text("導航-NotFound"),
            subtitle: Text("Get.toNamed(\"/tttttttt\")"),
            onTap: () => Get.toNamed("/tttttttt"),
          ),
          ListTile(
            title: Text("導航-中間件-證証Auth"),
            subtitle: Text("Get.toNamed(AppRoutes.My)"),
            onTap: () => Get.toNamed(AppRoutes.My),
          ),
          // 嵌套導航
          ListTile(
            title: Text("嵌套導航"),
            subtitle: Text("Get.toNamed(AppRoutes.NestedNavigator)"),
            onTap: () => Get.toNamed(AppRoutes.NestedNavigator),
          ),
          Divider(),
          // 樣式
          ListTile(
              title: Text("Theme"),
              subtitle: Text("Get.toNamed(AppRoutes.Theme)"),
              onTap: () => Get.toNamed(AppRoutes.Theme)),
          Divider(),

          // 組件
          ListTile(
              title: Text("组件-snackbar"),
              subtitle: Text("et.snackbar(\"標題\",\"消息\",...)"),
              onTap: () => Get.snackbar("標題", "消息")),
          ListTile(
            title: Text("组件-dialog"),
            subtitle: Text("Get.defaultDialog(...)"),
            onTap: () => Get.defaultDialog(
              title: "標題",
              content: Column(
                children: [
                  Text("第1行"),
                  Text("第2行"),
                  Text("第3行"),
                ],
              ),
              textConfirm: "確認",
              textCancel: "取消",
              onConfirm: () => Get.back(),
            ),
          ),
          ListTile(
            title: Text("组件-bottomSheet"),
            subtitle: Text('Get.bottomSheet(...)'),
            onTap: () => Get.bottomSheet(
              Container(
                height: 200,
                color: Colors.white,
                child: Column(
                  children: [
                    Text("第1行"),
                    Text("第2行"),
                    Text("第3行"),
                  ],
                ),
              ),
            ),
          ),
          Divider(),

          // 狀態
          ListTile(
            title: Text("State-Obx"),
            subtitle: Text('Get.toNamed(AppRoutes.Obx)'),
            onTap: () => Get.toNamed(AppRoutes.State + AppRoutes.Obx),
          ),
          ListTile(
            title: Text("State-Getx"),
            subtitle: Text('Get.toNamed(AppRoutes.Getx)'),
            onTap: () => Get.toNamed(AppRoutes.State + AppRoutes.Getx),
          ),
          ListTile(
            title: Text("State-GetBuilder"),
            subtitle: Text('Get.toNamed(AppRoutes.GetBuilder)'),
            onTap: () => Get.toNamed(AppRoutes.State + AppRoutes.GetBuilder),
          ),
          ListTile(
            title: Text("State-ValueBuilder"),
            subtitle: Text('Get.toNamed(AppRoutes.ValueBuilder)'),
            onTap: () => Get.toNamed(AppRoutes.State + AppRoutes.ValueBuilder),
          ),
          ListTile(
            title: Text("State-Workers"),
            subtitle: Text('Get.toNamed(AppRoutes.Workers)'),
            onTap: () => Get.toNamed(AppRoutes.State + AppRoutes.Workers),
          ),
          Divider(),

          // 依赖注入
          ListTile(
            title: Text("Dependency-Put-Find"),
            subtitle: Text('Get.toNamed(AppRoutes.DependencyPutFind)'),
            onTap: () =>
                Get.toNamed(AppRoutes.Dependency + AppRoutes.DependencyPutFind),
          ),
          ListTile(
            title: Text("Dependency-LazyPut"),
            subtitle: Text('Get.toNamed(AppRoutes.DependencyLazyPut)'),
            onTap: () =>
                Get.toNamed(AppRoutes.Dependency + AppRoutes.DependencyLazyPut),
          ),
          Divider(),

          // Count
          ListTile(
            title: Text("Count"),
            subtitle: Text('Get.toNamed(AppRoutes.Count)'),
            onTap: () => Get.toNamed(AppRoutes.Count),
          ),
          Divider(),

          // GetxService
          ListTile(
            title: Text("Service"),
            subtitle: Text('Get.toNamed(AppRoutes.Service)'),
            onTap: () => Get.toNamed(AppRoutes.Service),
          ),
          Divider(),

          // GetConnect
          ListTile(
            title: Text("GetConnect"),
            subtitle: Text('Get.toNamed(AppRoutes.GetConnect)'),
            onTap: () => Get.toNamed(AppRoutes.GetConnect),
          ),
          ListTile(
            title: Text("GetConnectStateMixin"),
            subtitle: Text('Get.toNamed(AppRoutes.GetConnectStateMixin)'),
            onTap: () => Get.toNamed(AppRoutes.GetConnectStateMixin),
          ),
          Divider(),

          // 控制器 + dio
          ListTile(
            title: Text("GetControllerDio"),
            subtitle: Text('Get.toNamed(AppRoutes.GetControllerDio)'),
            onTap: () => Get.toNamed(AppRoutes.GetControllerDio),
          ),
          Divider(),

          // 多语言
          ListTile(
            title: Text("Lang"),
            subtitle: Text('Get.toNamed(AppRoutes.Lang)'),
            onTap: () => Get.toNamed(AppRoutes.Lang),
          ),
          Divider(),
        ],
      ),
    );
  }
}
