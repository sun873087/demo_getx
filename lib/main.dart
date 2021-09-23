import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'common/lang/translation_service.dart';
import 'common/routes/app_pages.dart';
import 'common/services/global_config.dart';
import 'common/utils/logger.dart';

Future<void> main() async {
  await initServices();
  runApp(MyApp());
}

Future<void> initServices() async {
  print('starting services ...');
  await Get.putAsync(() => GlobalConfigService().init());
  // await Get.putAsync(SettingsService()).init();
  print('All services started...');
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      unknownRoute: AppPages.unknownRoute,
      // 寫LOG
      logWriterCallback: Logger.write, 
      // 多國語系
      locale: TranslationService.locale, 
      fallbackLocale: TranslationService.fallbackLocale,
      translations: TranslationService(),
    );
  }
}