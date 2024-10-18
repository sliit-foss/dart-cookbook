library enhanced_http;

import 'dart:convert';
import 'package:enhanced_http/streamed_request.dart';
import 'package:enhanced_http/interceptor.dart';
import 'package:enhanced_http/utils.dart';
import 'package:http/http.dart' as http;

export 'package:http/http.dart';

class EnhancedHttp extends StreamedRequest with Interceptor, Utils {
  late final String? baseURL;
  late final Map<String, String>? headers;

  EnhancedHttp(
      {String this.baseURL = "",
      Map<String, String>? headers,
      InterceptorOptions? interceptors}) {
    this.headers = headers ?? {'Content-Type': "application/json"};
    this.interceptors = interceptors ?? InterceptorOptions();
  }

  Future<dynamic> get(String path,
      {Map<String, String>? headers,
      InterceptorOptions? interceptors,
      String? responseType,
      Map<String, dynamic>? options}) async {
    final url = Uri.parse('$baseURL$path');
    return await request(() async {
      if (isStream(headers, responseType)) {
        return await streamed(
            'GET',
            url,
            mergeHeaders(this.headers, headers,
                await this.interceptors!.headers?.call()),
            responseType: responseType);
      }
      return await http.get(
        url,
        headers: mergeHeaders(
            this.headers, headers, await this.interceptors!.headers?.call()),
      );
    }, url, options, interceptors);
  }

  Future<dynamic> post(String path,
      {dynamic payload,
      Map<String, String>? headers,
      InterceptorOptions? interceptors,
      List<dynamic>? files,
      String? responseType,
      Map<String, dynamic>? options}) async {
    final url = Uri.parse('$baseURL$path');
    return await request(() async {
      if (isStream(headers, responseType)) {
        return await streamed(
            'POST',
            url,
            mergeHeaders(this.headers, headers,
                await this.interceptors!.headers?.call()),
            payload: payload,
            files: files,
            responseType: responseType);
      }
      return await http.post(
        url,
        headers: mergeHeaders(
            this.headers, headers, await this.interceptors!.headers?.call()),
        body: payload == null ? {} : jsonEncode(payload),
      );
    }, url, options, interceptors);
  }

  Future<dynamic> _update(String method, String path, payload, headers,
      interceptors, files, responseType, options) async {
    final url = Uri.parse('$baseURL$path');
    return await request(() async {
      if (isStream(headers, responseType)) {
        return await streamed(
            method,
            url,
            mergeHeaders(this.headers, headers,
                await this.interceptors!.headers?.call()),
            payload: payload,
            files: files,
            responseType: responseType);
      } else {
        payload ??= {};
        if (method == "PUT") {
          return await http.put(
            url,
            headers: mergeHeaders(this.headers, headers,
                await this.interceptors!.headers?.call()),
            body: jsonEncode(payload),
          );
        }
        return await http.patch(
          url,
          headers: mergeHeaders(
              this.headers, headers, await this.interceptors!.headers?.call()),
          body: jsonEncode(payload),
        );
      }
    }, url, options, interceptors);
  }

  Future<dynamic> put(String path,
      {dynamic payload,
      Map<String, String>? headers,
      InterceptorOptions? interceptors,
      List<dynamic>? files,
      String? responseType,
      Map<String, dynamic>? options}) async {
    return _update("PUT", path, payload, headers, interceptors, files,
        responseType, options);
  }

  Future<dynamic> patch(String path,
      {dynamic payload,
      Map<String, String>? headers,
      InterceptorOptions? interceptors,
      List<dynamic>? files,
      String? responseType,
      Map<String, dynamic>? options}) async {
    return _update("PATCH", path, payload, headers, interceptors, files,
        responseType, options);
  }

  Future<dynamic> delete(String path,
      {Map<String, String>? headers,
      InterceptorOptions? interceptors,
      String? responseType,
      Map<String, dynamic>? options}) async {
    final url = Uri.parse('$baseURL$path');
    return await request(() async {
      if (isStream(headers, responseType)) {
        return await streamed(
            'DELETE',
            url,
            mergeHeaders(this.headers, headers,
                await this.interceptors!.headers?.call()),
            responseType: responseType);
      }
      return await http.delete(
        url,
        headers: mergeHeaders(
            this.headers, headers, await this.interceptors!.headers?.call()),
      );
    }, url, options, interceptors);
  }

  Future<dynamic> head(String path,
      {Map<String, String>? headers,
      InterceptorOptions? interceptors,
      String? responseType,
      Map<String, dynamic>? options}) async {
    final url = Uri.parse('$baseURL$path');
    return await request(() async {
      return await http.head(
        url,
        headers: mergeHeaders(
            this.headers, headers, await this.interceptors!.headers?.call()),
      );
    }, url, options, interceptors);
  }
}
