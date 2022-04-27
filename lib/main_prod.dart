import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../network/data/data_user_usecase.dart';

import 'app/app.dart';
import 'config.dart';
import 'network/usecases/user_usecase.dart';

void main() async {
  Config.instance.flavor = Flavor.prod;
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

void initialize() {
  Get.lazyPut<UserUseCase>(() => DataUserUseCase());
  // Get.lazyPut<UserUseCase>(() => MockUserUseCase());
  // Get.put<ActivityUseCase>(NetworkActivityUseCase());
  // Get.lazyPut(() => AuthenticationController());
}
