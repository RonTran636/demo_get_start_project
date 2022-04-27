import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:overlay_support/overlay_support.dart';

import '../network/usecases/user_usecase.dart';
import '../resources/colors.dart';
import '../screens/login/login_controller.dart';
import '../screens/splash/splash_controller.dart';
import '../screens/splash/splash_screen.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OverlaySupport.global(
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialBinding: RootBinding(),
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        theme: ThemeData(
          primaryColor: AppColor.primaryColor,
          // fontFamily: 'Poppins'
        ),
        builder: (context, widget) => MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          child: widget ?? const SizedBox.shrink(),
        ),
        home: const SplashScreen(),
      ),
    );
  }
}

class RootBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(SplashController());
    Get.put(LoginController());
    // Get.put<HomeController>(HomeController());
    // Get.put<CategoryController>(CategoryController());
    // Get.put<AboutController>(AboutController());
  }
}
