import 'package:flutter/material.dart';
import 'package:mobile/src/core/widgets/custom_app_bar.dart';
import 'package:get/get.dart';

import '../../../models/post.dart';

class PostView extends StatelessWidget {
  const PostView({super.key, required this.post});

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Details"),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Title: ${post.title}',
              style: Get.textTheme.bodyMedium,
            ),
            Divider(),
            Text('Description: ' + post.text),
            Divider(),
            Text(
              'Address: ${post.address[0]}, ${post.address[1]}, ${post.address[2]}',
            ),
            Divider(),
            Text("Updated at: ${post.updated_at ?? "not updated yet"}")
          ],
        ),
      ),
    );
  }
}
