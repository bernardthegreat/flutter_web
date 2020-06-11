import 'dart:convert';
import 'package:flutter_web/models/CovidProvider.dart';
import 'package:http/http.dart' as http;

Future<ApiCovid> fetchCovid() async {
    final response =
        await http.get('https://coronavirus-19-api.herokuapp.com/countries/philippines');

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      print(response.body);
      return ApiCovid.fromJson(json.decode(response.body));
      
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }