import 'dart:convert';

import 'package:http/http.dart';
import 'package:movie_application/api/api_constants.dart';

class ApiClient {
  final Client _client;

  ApiClient(this._client);

  dynamic get(String path) async {
    final response = await _client.get(
      Uri.parse(
          '${ApiConstants.BASE_URL}$path?api_key=${ApiConstants.API_KEY}'),
      headers: {
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      final movies = json.decode(response.body);
      print(movies);
      return movies;
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}
