import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:recipes/models/user_model.dart';

Future<User> getData() async {
  Uri baseUrl = Uri.parse('https://randomuser.me/api/');
  http.Response response = await http.get(baseUrl);
  Map datafromJson = jsonDecode(response.body);
  User user = User(
    firstName: datafromJson['results'][0]['name']['first'],
    lastName: datafromJson['results'][0]['name']['last'],
    email: datafromJson['results'][0]['email'],
  );
  return user;
}
