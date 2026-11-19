import 'dart:convert' show jsonDecode;

import 'package:http/http.dart' as http;

import '../model/apod_model.dart';

Future<List<ApodModel>> fetchApod() async {
  var response = await http.get(
    Uri.parse(
      'https://science.nasa.gov/wp-json/wp/v2/apod-basic?date_from=261110&date_to=261116&per_page=10',
    ),
  );

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.

    print(" futureApod : ${response.body}");
    print(" DECODE : ${jsonDecode(response.body)}");

    final List<dynamic> data = jsonDecode(response.body);

    return data.map((json) => ApodModel.fromJson(json)).toList();
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}
