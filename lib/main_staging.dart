import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/adapters.dart';
import '../resources/constants.dart';

import 'app/app.dart';
import 'config.dart';
import 'network/data/data_user_usecase.dart';
import 'network/usecases/user_usecase.dart';

void main() async {
  Config.instance.flavor = Flavor.staging;
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

void initialize() async {
  Get.lazyPut<UserUseCase>(() => DataUserUseCase());
  // Get.lazyPut<UserUseCase>(() => MockUserUseCase());
  // Get.put<ActivityUseCase>(NetworkActivityUseCase());
  // Get.lazyPut(() => AuthenticationController());
  await Hive.initFlutter();
  await Hive.openBox(Constant.appSession);
}

