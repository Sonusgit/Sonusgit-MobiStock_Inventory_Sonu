import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:get/get.dart' as getx;
import 'package:mobistock/utils/shared_preferences_helpers.dart';
// import 'package:sell_now/global/constants.dart';

class ApiServices {
  final Dio _dio = Dio();
  
  Future<Response?> requestGetForApi(
      {required String url,
      Map<String, dynamic>? dictParameter,
      required bool authToken}) async {
    try {
      // ignore: avoid_print
      print("Url:  $url");
      // ignore: avoid_print
      print("DictParameter: $dictParameter");
      
      BaseOptions options = BaseOptions(
          headers: await getHeader(authToken),
          baseUrl: url,
          receiveTimeout: const Duration(minutes: 2),
          connectTimeout: const Duration(minutes: 2),
          validateStatus: (_) => true);
      _dio.options = options;
      
      Response response = await _dio.get(url,
          queryParameters: dictParameter,
          options: Options(headers: await getHeader(authToken)));
      // ignore: avoid_print
      print("Response_data: ${response.data}");

      return response;
    } catch (error) {
      // ignore: avoid_print
      print("Exception_Main: $error");
      return null;
    }
  }

  /// POST
  Future<Response?> requestPostForApi(
      {required String url,
      required Map<String, dynamic> dictParameter,
      required bool authToken}) async {
    try {
      // ignore: avoid_print
      print("Url:  $url");

      // ignore: avoid_print
      print("DictParameter: $dictParameter");

      BaseOptions options = BaseOptions(
          //  baseUrl: url,
          receiveTimeout: const Duration(minutes: 1),
          connectTimeout: const Duration(minutes: 1),
          headers: await getHeader(authToken));
      _dio.options = options;
      
      Response response = await _dio.post(url,
          data: dictParameter,
          options: Options(
              followRedirects: false,
              validateStatus: (status) => true,
              headers: await getHeader(authToken)));

      // ignore: avoid_print
      print("Response: $response");
      // ignore: avoid_print
      print("Response_headers: ${response.headers}");
      // ignore: avoid_print
      print("Response_real_url: ${response.realUri}");
      // checkTokenStatus(response: response);

      return response;
    } catch (error) {
      // ignore: avoid_print
      print("Exception_Main: $error");
      return null;
    }
  }

  /// MULTIPART
  Future<Response?> requestMultipartApi(
      {required context,
      String? url,
      FormData? formData,
      getx.RxDouble? percent,
      required bool authToken}) async {
    try {
      log("Url:  $url");

      log("formData fields: ${formData?.fields}");
      log("formData files: ${formData?.files[0].value.filename}");

      BaseOptions options = BaseOptions(
          baseUrl: url!,
          receiveTimeout: const Duration(minutes: 1),
          connectTimeout: const Duration(minutes: 1),
          headers: await getHeader(authToken));

      _dio.options = options;
      Response response = await _dio.post(url, onSendProgress: (count, total) {
        percent!.value = (count / total) * 100;

        print("$percent");
      },
          data: formData,
          options: Options(
            followRedirects: false,
            validateStatus: (status) => true,
            headers: await getHeader(authToken),
          ));

      log("Response: ${response.data}");

      return response;
    } catch (error) {
      log("Exception_Main: $error");
      return null;
    }
  }

  //patch method
  Future<Response?> requestPatchForApi(
      {required String url,
      required Map<String, dynamic> dictParameter,
      required bool authToken}) async {
    try {
      // ignore: avoid_print
      print("Url:  $url");

      // ignore: avoid_print
      print("DictParameter: $dictParameter");

      BaseOptions options = BaseOptions(
          //  baseUrl: url,
          receiveTimeout: const Duration(minutes: 1),
          connectTimeout: const Duration(minutes: 1),
          headers: await getHeader(authToken));
      _dio.options = options;
      
      Response response = await _dio.patch(url,
          data: dictParameter,
          options: Options(
              followRedirects: false,
              validateStatus: (status) => true,
              headers: await getHeader(authToken)));

      // ignore: avoid_print
      print("Response: $response");
      // ignore: avoid_print
      print("Response_headers: ${response.headers}");
      // ignore: avoid_print
      print("Response_real_url: ${response.realUri}");
      // checkTokenStatus(response: response);

      return response;
    } catch (error) {
      // ignore: avoid_print
      print("Exception_Main: $error");
      return null;
    }
  }

  Future<Map<String, String>> getHeader(bool authToken) async {
    if (authToken) {
      // Get JWT token from SharedPreferences
      String? jwtToken = await SharedPreferencesHelper.getJwtToken();
      log("header token = : $jwtToken");
      
      return {
        "Content-type": "application/json",
        // "Authkey": WebApiConstant.AUTH_KEY,
        "Authorization": "Bearer $jwtToken",
        //  "AccessToken": accessToken,
        // "Connection": "Keep-Alive",
        // "user_roll": "5", // 5/6
        // "Keep-Alive": "timeout=5, max=1000",
      };
    } else {
      return {
        "Content-type": "application/json",
        // "Authkey": WebApiConstant.AUTH_KEY,
        // "Authorization": "Bearer ${AppConstants.logindata.getString("token")}",
        //  "AccessToken": accessToken,
        // "Connection": "Keep-Alive",
        // "user_roll": "5", // 5/6
        // "Keep-Alive": "timeout=5, max=1000",
      };
    }
  }
}