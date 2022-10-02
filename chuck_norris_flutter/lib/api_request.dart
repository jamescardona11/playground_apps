import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

import 'model/chuck_joke.dart';

class ApiRequest {
  final String _url = 'https://api.chucknorris.io/jokes/random';

  Future<ChuckJoke?> getRandomJokeFromApi() async {
    try {
      final response = await http.get(Uri.parse(_url));
      // body != map
      final jsonResponse = jsonDecode(response.body);

      return ChuckJoke.fromJson(jsonResponse);
    } catch (e, s) {
      print('Error: $e');
    }
    return null;
  }
}
