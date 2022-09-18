import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

Future<Map<String, dynamic>> parseJsonFromAssets(String path) {
  return rootBundle.loadString(path).then((jsonStr) => jsonDecode(jsonStr));
}
