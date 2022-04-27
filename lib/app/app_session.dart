import 'dart:convert';

import 'package:hive/hive.dart';

import '../resources/constants.dart';

class AppSession {
  final _box = Hive.box(Constant.appSession);
  //
  // /// *** current user info ***
  // Demo? _currentUser;
  //
  // User? get currentUser {
  //   final _currentData = _box.get(Constant.currentUser) as String?;
  //   if (_currentData == null) {
  //     return null;
  //   } else {
  //     _currentUser = User.fromJson(jsonDecode(_currentData) as Map<String, dynamic>);
  //     return _currentUser;
  //   }
  // }
  //
  // set currentUser(User? user) {
  //   final _json = jsonEncode(user);
  //   _box.put(Constant.currentUser, _json);
  //   _currentUser = user;
  // }

  /// *** first time login ***
  late bool _firstTimeLoggedIn;

  bool get firstTimeLoggedIn {
    _firstTimeLoggedIn = _box.get(Constant.firstTimeLogin) as bool? ?? false;
    return _firstTimeLoggedIn;
  }

  set firstTimeLoggedIn(bool value) {
    _box.put(Constant.firstTimeLogin, value);
    _firstTimeLoggedIn = value;
  }

  /// *** first time open app ***
  late bool _firstTimeOpenApp;

  bool get firstTimeOpenApp {
    _firstTimeOpenApp = _box.get(Constant.firstTimeOpenApp) as bool? ?? true;
    return _firstTimeOpenApp;
  }

  set firstTimeOpenApp(bool value) {
    _box.put(Constant.firstTimeOpenApp, value);
    _firstTimeOpenApp = value;
  }

  /// *** current user token ***
  String? _token;

  String? get sessionToken {
    _token = _box.get(Constant.appToken) as String?;
    return _token;
  }

  set sessionToken(String? value) {
    _box.put(Constant.appToken, value);
    _token = value;
  }

  static AppSession? _instance;

  static AppSession get instance {
    _instance ??= AppSession._internal();
    return _instance ?? AppSession._internal();
  }

  AppSession._internal();
}
