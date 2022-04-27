import 'package:demo_get_start_project/resources/constants.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/adapters.dart';

import 'app/app.dart';
import 'config.dart';
import 'network/mock/mock_user_usecase.dart';
import 'network/usecases/user_usecase.dart';

void main() async {
  Config.instance.flavor = Flavor.dev;
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  initialize();
  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en', 'US')],
      fallbackLocale: const Locale('en', 'US'),
      path: 'assets/translations',
      child: const App(),
    ),
  );
}

void initialize() async{
  Get.lazyPut<UserUseCase>(() => MockUserUseCase());
  // Get.lazyPut<UserUseCase>(() => MockUserUseCase());
  // Get.put<ActivityUseCase>(NetworkActivityUseCase());
  // Get.lazyPut(() => AuthenticationController());

  await Hive.initFlutter();
  await Hive.openBox(Constant.appSession);
}
