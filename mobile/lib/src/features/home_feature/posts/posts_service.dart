import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:mobile/src/core/constants.dart';

import '../../../models/post.dart';
import '../../auth_feature/auth_controller.dart';
import '../../../models/reply.dart';

class PostsService {
  static var client = http.Client();

  final authController = Get.find<AuthController>();

  Future<List<Post>> getPosts() async {
    final response = await client.get(Uri.parse("$prefixUrl/api/posts/"),
        headers: {'content-type': 'application/json'});
    final List decodedResponse = json.decode(response.body);
    print(decodedResponse);
    if (response.statusCode != 200) {
      throw 'An Error Occured';
    }
    final posts = decodedResponse.map((e) => Post.fromJson(e)).toList();
    print(posts);
    return posts;
  }

  Future<List<Post>> getMyPosts(String id) async {
    debugPrint('id $id');
    final response = await client.get(
        Uri.parse("$prefixUrl/api/posts/users/$id"),
        headers: {'content-type': 'application/json'});
    final List decodedResponse = json.decode(response.body);
    print(decodedResponse);
    if (response.statusCode != 200) {
      throw 'An Error Occured';
    }
    final posts = decodedResponse.map((e) => Post.fromJson(e)).toList();
    print(posts);
    return posts;
  }

  void addPosts(NewPost post) async {
    final encodedPost = post.toJson();
    print(encodedPost);
    var response = await http.post(
      Uri.parse('$prefixUrl/api/posts/'),
      body: json.encode(post.toJson()),
      headers: {'content-type': 'application/json'},
    );
    print("response ${response.body}");
    if (response.body.isNotEmpty) {
      final decodedResponse = json.decode(response.body);
      if (response.statusCode != 200 && response.statusCode != 201) {
        final String? content = decodedResponse['content'];
        print(content);
        if (content != null) {
          print(content.toString());
          throw content.toString();
        }
        throw 'An Error Occured';
      }
    }
  }

  Future<List<Reply>> getReplies(String postId) async {
    final response = await client.get(Uri.parse("$prefixUrl/api/reply/$postId"),
        headers: {'content-type': 'application/json'});
    final List decodedResponse = json.decode(response.body);
    print(decodedResponse);
    if (response.statusCode != 200) {
      throw 'An Error Occured';
    }
    var replies = decodedResponse.map((e) => Reply.fromJson(e)).toList();
    replies = replies.reversed.toList();
    return replies;
  }

  void addReply(NewReply reply) async {
    final encodedReply = reply.toJson();
    var response = await http.post(
      Uri.parse('$prefixUrl/api/reply/'),
      body: json.encode(encodedReply),
      headers: {'content-type': 'application/json'},
    );
    print("response ${response.body}");
    if (response.body.isNotEmpty) {
      final decodedResponse = json.decode(response.body);
      print(decodedResponse);
      if (response.statusCode != 200 && response.statusCode != 201) {
        final String? content = decodedResponse['content'];
        print(content);
        if (content != null) {
          print(content.toString());
          throw content.toString();
        }
        throw 'An Error Occured';
      }
    }
  }
}
