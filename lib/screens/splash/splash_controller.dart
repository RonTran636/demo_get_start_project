import 'package:get/get.dart';

import '../../app/app_session.dart';
import '../login/login_screen.dart';
import '../main/main_screen.dart';

class SplashController extends GetxController {

  void _checkCurrentSession() {
    Future.delayed(const Duration(milliseconds: 2000), () async {
      final _appSession = AppSession.instance;
      // final _currentUser = _appSession.currentUser;
      // if (_currentUser == null) {
      //   final _firstTimeLogin = _appSession.firstTimeLoggedIn;
      //   if (_firstTimeLogin) {
      //     Get.to(() => const LoginScreen());
      //   } else {
      //     Get.to(() => const MainScreen());
      //   }
      // } else {
      //   Get.to(() => const MainScreen(initialIndex: 2));
      // }
    });
  }

  @override
  void onInit() {
    super.onInit();
    _checkCurrentSession();
  }
}
