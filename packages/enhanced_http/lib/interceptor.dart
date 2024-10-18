import 'dart:convert';
import 'package:enhanced_http/http_error.dart';

class InterceptorOptions {
  Function(dynamic res)? response;
  Function(dynamic e)? error;
  Future<Map<String, String>> Function()? headers;

  InterceptorOptions({this.response, this.error, this.headers});
}

class Interceptor {
  InterceptorOptions? interceptors;

  String? defaultErrorMessage;

  Future<dynamic> request(
    Function request,
    Uri url,
    Map<String, dynamic>? options,
    InterceptorOptions? _interceptors,
  ) async {
    _interceptors = InterceptorOptions(
        response: interceptors?.response ?? _interceptors?.response,
        error: interceptors?.error ?? _interceptors?.error);
    try {
      final response = await request();
      dynamic data;
      try {
        data = json.decode(response.body);
      } catch (e) {
        try {
          data = response.body;
        } catch (e) {
          data = response;
        }
      }
      final decoded = {
        "url": url,
        "status": response.statusCode,
        "data": data,
        "headers": response.headers,
        "options": options,
      };
      if (response.statusCode >= 200 && response.statusCode <= 299) {
        if (_interceptors.response != null) {
          return _interceptors.response!(decoded);
        }
        return data;
      } else {
        if (_interceptors.error != null) {
          return _interceptors.error!(decoded);
        }
        throw HttpError(response.statusCode, response.headers, data);
      }
    } catch (e) {
      if (_interceptors.error != null) return _interceptors.error!(e);
      rethrow;
    }
  }
}
