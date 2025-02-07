import 'package:flutter/material.dart';
import 'package:mobile/src/core/widgets/custom_app_bar.dart';
import 'package:get/get.dart';
import 'package:mobile/src/core/widgets/custom_drawer.dart';
import 'package:mobile/src/features/home_feature/posts/reply_controller.dart';
import 'package:mobile/src/models/reply.dart';

import '../../auth_feature/auth_controller.dart';
import 'posts_controller.dart';

class RepliesPage extends GetView {
  final String postId;

  RepliesPage({super.key, required this.postId});

  @override
  Widget build(BuildContext context) {
    final postController = Get.put(PostsController());
    final authController = Get.find<AuthController>();
    print('length ${postController.postReplies.length}');
    postController.getReplies(postId);
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: CustomAppBar(
        title: 'Replies',
        isLoggedIn: true,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: postController.repliesController,
                  decoration: InputDecoration(hintText: "Add a Reply"),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    postController.addReply(
                      NewReply(
                          post_id: postId,
                          user_id: postController.user.id,
                          text: postController.repliesController.text),
                    );
                  },
                  child: Text("Add Reply!"))
            ],
          ),
          Expanded(
            child: Obx(
              () => ListView.builder(
                itemCount: postController.postReplies.length,
                itemBuilder: (context, index) {
                  final replyController = Get.put(ReplyController());
                  final userId = postController.postReplies[index].user_id;
                  return FutureBuilder<String>(
                    future: replyController.findUser(userId),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      return ListTile(
                        title: Text(snapshot.data),
                        subtitle: Text(postController.postReplies[index].text),
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
