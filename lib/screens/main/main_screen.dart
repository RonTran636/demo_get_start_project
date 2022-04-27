import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../app/app_session.dart';
import '../../resources/colors.dart';
import '../../resources/strings.dart';
import '../../resources/style.dart';
import '../../widgets/app_button.dart';
import '../../widgets/overplay_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key, this.initialIndex}) : super(key: key);
  final int? initialIndex;

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.initialIndex ?? 0;
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      if (AppSession.instance.firstTimeOpenApp) {
        _showSignUpConfirmationDialog(buildContext: context);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        items: _listBottomNavItems,
        selectedItemColor: AppColor.black,
        unselectedItemColor: AppColor.iconGrey,
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (index) {
          setState(() => _selectedIndex = index);
        },
      ),
    );
  }

  void _showSignUpConfirmationDialog({required BuildContext buildContext}) {
    final OverlayWidget _overLayWidget = OverlayWidget(buildContext);

    _overLayWidget.overlayWidget = Container(
      width: MediaQuery.of(buildContext).size.width * 0.9,
      height: MediaQuery.of(buildContext).size.height * 0.7,
      padding: const EdgeInsets.fromLTRB(32, 40, 32, 32),
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: _termAndServiceWidget(),
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 36),
            child: AppButton.primary(
              LocaleKeys.register_agree.tr(),
              fontWeight: FontWeight.w600,
              onPressed: () {
                _overLayWidget.close();
                AppSession.instance.firstTimeOpenApp = false;
              },
            ),
          ),
        ],
      ),
    );
    _overLayWidget.show();
  }

  Widget _termAndServiceWidget() {
    return RichText(
      text: TextSpan(
          style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w400,
            color: AppColor.black,
            height: 1.8,
          ),
          children: [
            TextSpan(text: LocaleKeys.register_confirmDialogDesc_part1.tr()),
            TextSpan(
              text: LocaleKeys.termOfService.tr(),
              style: linkStyle,
              recognizer: TapGestureRecognizer()..onTap = () {}, //TODO: Add privacy link here
            ),
            TextSpan(text: LocaleKeys.register_confirmDialogDesc_part2.tr()),
            TextSpan(
              text: LocaleKeys.privacyPrivacy.tr(),
              style: linkStyle,
              recognizer: TapGestureRecognizer()..onTap = () {}, //TODO: Add privacy link here
            ),
          ]),
    );
  }
}

final _listBottomNavItems = <BottomNavigationBarItem>[
  BottomNavigationBarItem(
    icon: const Icon(Icons.explore_rounded),
    label: LocaleKeys.bottomNav_discover.tr(),
  ),
  BottomNavigationBarItem(
    icon: const Icon(Icons.bookmark_rounded),
    label: LocaleKeys.bottomNav_interest.tr(),
  ),
  BottomNavigationBarItem(
    icon: const Icon(Icons.radio_button_checked_rounded),
    label: LocaleKeys.bottomNav_goal.tr(),
  ),
  BottomNavigationBarItem(
    icon: const Icon(Icons.sms_rounded),
    label: LocaleKeys.bottomNav_chat.tr(),
  ),
  BottomNavigationBarItem(
    icon: const Icon(Icons.notifications_rounded),
    label: LocaleKeys.bottomNav_notification.tr(),
  ),
];
