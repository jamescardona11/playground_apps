import 'dart:async';

import 'package:chuck_norris_flutter/api_request.dart';

import 'model/chuck_joke.dart';

class ChuckController {
  final ApiRequest _apiRequest = ApiRequest();
  final StreamController<List<ChuckJoke>> _controller =
      StreamController<List<ChuckJoke>>();

  final List<ChuckJoke> _jokes = [];

  Future<void> getRandomJoke() async {
    final joke = await _apiRequest.getRandomJokeFromApi();

    if (joke != null) {
      _jokes.add(joke);

      _controller.add(_jokes);
    }
  }

  Future<void> getPeriodicRandomJoke() async {
    Stream.periodic(Duration(milliseconds: 1000), (index) async {
      getRandomJoke();
    }).take(5).listen((event) {});
  }

  Stream<List<ChuckJoke>> get jokes => _controller.stream;

  void close() {
    _controller.close();
  }
}
