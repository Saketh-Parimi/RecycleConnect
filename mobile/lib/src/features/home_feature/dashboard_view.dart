import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/src/core/constants.dart';
import 'package:mobile/src/core/widgets/custom_app_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile/src/features/home_feature/home_controller.dart';
import 'package:mobile/src/features/home_feature/nearest_plants_view.dart';

import '../../core/widgets/custom_drawer.dart';
import '../../core/widgets/post_card.dart';

class DashboardView extends StatelessWidget {
  DashboardView({super.key});

  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    var userPosts = controller.userPosts;
    print(userPosts);
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: CustomAppBar(
        title: '',
        isLoggedIn: true,
      ),
      body: Center(
          child: Column(
        children: [
          Text(
            'My Posts',
            style: Get.textTheme.headlineLarge!.copyWith(color: kButtonColor),
          ),
          Obx(
            () => Expanded(
              child: ListView.builder(
                itemCount: userPosts.length,
                itemBuilder: (_, index) {
                  return PostCard.userCard(
                    title: userPosts[index].title,
                    description: userPosts[index].text,
                    location: userPosts[index].address[1],
                    index: index,
                    id: userPosts[index].id,
                  );
                },
              ),
            ),
          ),
        ],
      )),
    );
  }
}
