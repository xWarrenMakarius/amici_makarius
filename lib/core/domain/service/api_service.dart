import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

import '../../data/exceptions/api_exception.dart';
import '../../resources/app_config.dart';
import '../../utils/enums/http_method.dart';

class ApiService {
  final http.Client _client;

  ApiService({
    http.Client? client,
  }) : _client = client ?? http.Client();

  String get baseUrl => AppConfig.instance.getBaseUrl;

  Future<dynamic> sendRequest({
    required HttpMethod method,
    required String endpoint,
    dynamic body,
    Map<String, String>? headers,
    Map<String, dynamic>? queryParams,
  }) async {
    final uri = Uri.parse('$baseUrl$endpoint').replace(
      queryParameters: queryParams,
    );

    log(
      '${method.name.toUpperCase()} URL: $uri $body $headers $queryParams',
    );

    final requestHeaders = {
      'Content-Type': 'application/json',
      ...?headers,
    };

    late http.Response response;

    switch (method) {
      case HttpMethod.get:
        response = await _client.get(
          uri,
          headers: requestHeaders,
        );
        break;

      case HttpMethod.post:
        response = await _client.post(
          uri,
          headers: requestHeaders,
          body: body != null ? jsonEncode(body) : null,
        );
        break;

      case HttpMethod.put:
        response = await _client.put(
          uri,
          headers: requestHeaders,
          body: body != null ? jsonEncode(body) : null,
        );
        break;

      case HttpMethod.delete:
        response = await _client.delete(
          uri,
          headers: requestHeaders,
        );
        break;

      case HttpMethod.patch:
        response = await _client.patch(
          uri,
          headers: requestHeaders,
          body: body != null ? jsonEncode(body) : null,
        );
        break;
    }

    log(
      '${method.name.toUpperCase()} Response: '
      '${response.statusCode} ${response.body}',
    );

    if (response.statusCode >= 200 &&
        response.statusCode < 300) {
      if (response.body.isEmpty) {
        return null;
      }

      return jsonDecode(response.body);
    }

    if (response.body.isNotEmpty) {
      try {
        final json = jsonDecode(response.body);

        throw ApiException(
          message: json['message']?.toString() ?? 'Something went wrong',
          statusCode: response.statusCode,
        );
      } catch (e) {
        if (e is ApiException) {
          rethrow;
        }
      }
    }

    throw ApiException(
      message: 'Something went wrong',
      statusCode: response.statusCode,
    );
  }
}