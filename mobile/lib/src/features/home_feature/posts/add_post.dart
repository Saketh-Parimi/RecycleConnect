import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/src/core/widgets/custom_app_bar.dart';
import 'package:mobile/src/features/home_feature/posts/posts_controller.dart';
import 'package:mobile/src/models/post.dart';

import '../../../core/widgets/custom_drawer.dart';

class AddPostView extends StatelessWidget {
  AddPostView({super.key});

  final controller = Get.put(PostsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Add Post'),
      drawer: CustomDrawer(),
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(.2),
            borderRadius: BorderRadius.circular(13),
          ),
          height: Get.height / 1.5,
          width: Get.width / 1.2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                controller: controller.titleController,
                decoration: InputDecoration(hintText: "Title"),
              ),
              TextField(
                controller: controller.descController,
                decoration: InputDecoration(hintText: "Description"),
              ),
              TextField(
                controller: controller.numberStreetController,
                decoration: InputDecoration(hintText: "Number + Street"),
              ),
              TextField(
                controller: controller.cityState,
                keyboardType: TextInputType.streetAddress,
                decoration: InputDecoration(hintText: "City, State"),
              ),
              TextField(
                controller: controller.postalCode,
                keyboardType: TextInputType.streetAddress,
                decoration: InputDecoration(hintText: "Postal Code"),
              ),
              ElevatedButton(
                onPressed: () {
                  print(controller.user.id);
                  controller.addPost(NewPost(
                    title: controller.titleController.text,
                    text: controller.descController.text,
                    address: [
                      controller.numberStreetController.text,
                      controller.cityState.text,
                      controller.postalCode.text,
                    ],
                    user_id: controller.user.id,
                    type: "giving",
                  ));
                },
                child: Text("Add Post"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
