import 'package:get/get.dart';

import '../../app/app_session.dart';
import '../../config.dart';

class DataProvider extends GetConnect {
  final _baseUrl = Config.instance.flavorValues.baseUrl;

  Map<String, String> get _baseHeader {
    return {
      'Accept': '*/*',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${AppSession.instance.sessionToken}',
    };
  }

  @override
  void onInit() {
    httpClient.timeout = const Duration(minutes: 5);
    super.onInit();
  }

  /// *** Get user profile ***
  Future<Response> getUserInfo() => get(_baseUrl + '/api/v1/my-user', headers: _baseHeader);

  /// *** Update user info after create account ***
  Future<Response> createUserAccount({
    required String firstName,
    required String lastName,
    required String educationLevelId,
    required String? restaurantId,
    required String? jobTitleId,
  }) =>
      put(
        _baseUrl + '/api/v1/my-user',
        {
          'firstName': firstName,
          'lastName': lastName,
          'educationLevelId': educationLevelId,
          'restaurantId': restaurantId,
          'jobTitleId': jobTitleId
        },
        headers: _baseHeader,
      );
}
