import 'package:json_annotation/json_annotation.dart';

part 'chuck_joke.g.dart';

@JsonSerializable()
class ChuckJoke {
  ChuckJoke({
    required this.categories,
    this.iconUrl,
    required this.id,
    required this.url,
    required this.value,
  });

  factory ChuckJoke.fromJson(Map<String, dynamic> json) =>
      _$ChuckJokeFromJson(json);

  String get category =>
      categories.isNotEmpty ? categories.join(',') : 'No Category';

  final List<String> categories;
  final String? iconUrl;
  final String id;
  final String url;
  final String value;
}
