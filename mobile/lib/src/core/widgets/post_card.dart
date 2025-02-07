import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/src/features/home_feature/posts/posts_controller.dart';
import 'package:mobile/src/features/home_feature/posts/reply_page.dart';

import '../../features/home_feature/home_controller.dart';
import '../../features/home_feature/posts/post_view.dart';
import '../constants.dart';

class PostCard extends StatelessWidget {
  final String title;
  final String description;
  final String location;
  final int index;
  final String id;
  late bool isMyPost;

  dynamic homeController = '';

  PostCard({
    super.key,
    required this.title,
    required this.description,
    required this.location,
    required this.id,
    required this.index,
  }) {
    isMyPost = false;
  }
  PostCard.userCard({
    super.key,
    required this.title,
    required this.description,
    required this.id,
    required this.location,
    required this.index,
  }) {
    isMyPost = true;
    homeController = Get.put(HomeController());
  }

  final controller = Get.put(PostsController());

  @override
  Widget build(BuildContext context) {
    return Card(
      color: kButtonColor,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.add_location),
            title: Text(title,
                overflow: TextOverflow.ellipsis,
                style:
                    Get.textTheme.titleMedium!.copyWith(color: Colors.white)),
            subtitle: Text(
              description,
              overflow: TextOverflow.ellipsis,
              style: Get.textTheme.bodyMedium,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              TextButton(
                child: Text(
                  location,
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                  maxLines: 1,
                ),
                onPressed: () {/* ... */},
              ),
              TextButton(
                onPressed: () {
                  Get.offAll(() => RepliesPage(postId: id));
                },
                child: Text("Reply"),
              ),
              TextButton(
                child: const Text('Learn more'),
                onPressed: () {
                  print(isMyPost);
                  Get.to(() => PostView(
                        post: isMyPost
                            ? homeController.userPosts[index]
                            : controller.allPosts[index],
                      ));
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
