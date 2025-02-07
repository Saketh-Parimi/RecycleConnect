import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/src/core/constants.dart';
import 'package:mobile/src/core/widgets/custom_app_bar.dart';
import 'package:mobile/src/features/home_feature/posts/posts_controller.dart';
import 'package:mobile/src/models/post.dart';

import '../../../core/widgets/custom_drawer.dart';
import '../../../core/widgets/post_card.dart';

class PostsView extends StatelessWidget {
  PostsView({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(PostsController());
    List<Post> posts = controller.allPosts;
    print(posts);
    return Scaffold(
      appBar: CustomAppBar(title: 'All Posts'),
      drawer: CustomDrawer(),
      body: Obx(
        () => controller.isLoading.value
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: posts.length,
                itemBuilder: (_, index) {
                  return PostCard(
                    title: posts[index].title,
                    description: posts[index].text,
                    location: posts[index].address[1],
                    index: index,
                    id: posts[index].id,
                  );
                },
              ),
      ),
    );
  }
}
