import 'dart:convert';
import 'package:http/http.dart';
import 'api_service.dart';

class ApiClient {
  final Client _client;

  ApiClient(this._client);
  dynamic get(String path) async {
    final response = await _client.get(
      '${ApiConstants.BASE_URL}$path?api_key=${ApiConstants.API_KEY}',
      headers: {
        'content-type': 'application/json',
      },
    );
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception(response.reasonPhrase);
    }
  }}