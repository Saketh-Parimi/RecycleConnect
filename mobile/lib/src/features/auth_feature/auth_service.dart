import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:mobile/src/core/constants.dart';
import 'package:mobile/src/models/user.dart';

class AuthService {
  Future<User> loginUser(String username, String password) async {
    final response =
        await http.post(Uri.parse('$prefixUrl/api/auth/login'), body: {
      "username": username,
      "password": password,
    });
    final decodedResponse = json.decode(response.body);
    print(decodedResponse);
    if (response.statusCode != 200) {
      final String? content = decodedResponse['content'];
      print(content);
      if (content != null) {
        print(content.toString());
        throw content.toString();
      }
      throw 'An Error Occured';
    }
    await secureStorage.write(
        key: 'access_token', value: decodedResponse['access_token']);
    await secureStorage.write(
        key: 'refresh_token', value: decodedResponse['refresh_token']);
    print(decodedResponse['user_id']);
    final user = User(
        username: username, password: password, id: decodedResponse['user_id']);
    return user;
  }

  Future<User> registerUser(String username, String password) async {
    print(username);
    print(password);
    final response = await http.post(Uri.parse('$prefixUrl/api/auth/register'),
        body: json.encode({
          "username": username,
          "password": password,
        }),
        headers: {'content-type': 'application/json'});
    final decodedResponse = json.decode(response.body);
    print(decodedResponse);
    if (response.statusCode != 200) {
      final String? content = decodedResponse['content'];
      print(decodedResponse);
      print(content);
      if (content != null) {
        print(content.toString());
        throw content.toString();
      }
    }
    print('asd');
    final user = User(
        username: username, password: password, id: decodedResponse['user_id']);
    return user;
  }

  Future<bool> verifyAccessToken() async {
    try {
      final String? accessToken = await secureStorage.read(key: 'access_token');
      if (accessToken == null) return false;
      final response = await http.get(
        Uri.parse('$prefixUrl/api/auth/access-token'),
        headers: {
          "authorization": accessToken,
        },
      );
      if (response.statusCode != 200) {
        throw json.decode(response.body)['content'];
      }
      return true;
    } catch (e) {
      log(e.toString());
      return false;
    }
  }

  Future<bool> refreshAccessToken() async {
    try {
      final refreshToken = await secureStorage.read(key: 'refresh_token');
      if (refreshToken == null) return false;
      final response = await http
          .get(Uri.parse('$prefixUrl/api/auth/refresh-token'), headers: {
        "authorization": "$refreshToken",
      });
      if (response.statusCode != 200) {
        throw json.decode(response.body)['content'];
      }
      final decodedResponse = json.decode(response.body);
      await secureStorage.write(
          key: 'access_token', value: decodedResponse['access_token']);
      return true;
    } catch (e) {
      log(e.toString());
      return false;
    }
  }

  Future<String> findUser(String id) async {
    final response = await http.get(Uri.parse('$prefixUrl/api/auth/find/$id'),
        headers: {"content-type": "application/json"});
    final decodedResponse = json.decode(response.body);
    return decodedResponse['username'];
  }
}
