import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../resources/colors.dart';
import '../../resources/strings.dart';
import '../../widgets/app_button.dart';
import '../../widgets/app_text.dart';
import 'login_controller.dart';


class LoginScreen extends GetWidget<LoginController> {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _loginButton(),
    );
  }

  Widget _loginButton() {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        // const SizedBox.expand(),
        Expanded(child: Container()),
        AppText.customText(
          LocaleKeys.getStart.tr(),
          color: AppColor.white,
          fontSize: 32,
          fontWeight: FontWeight.w800,
        ),
        const SizedBox(height: 16),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 4.0,
          ),
          child: AppButton.primary(
            LocaleKeys.signIn.tr(),
            onPressed: () {},
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 8),
        InkWell(
          onTap: () {},
          child: AppText.customText(
            LocaleKeys.loginHelp.tr(),
            fontSize: 14,
            color: AppColor.white,
          ),
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}
