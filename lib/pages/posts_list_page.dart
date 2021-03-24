import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:git_brunch_demo_application/models/post.dart';
import 'package:git_brunch_demo_application/pages/home_page/home_page_controller.dart';

class PostsListPage extends StatelessWidget {
  final homePageController = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Posts'),
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return GetX<HomePageController>(
      builder: (controller){
        return ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: controller.postList.length,
          itemBuilder: (context, index) {
            Post post = controller.postList[index];
            return Card(
              child: Center(
                child: Text('${post.title}'),
              ),
            );
          },
        );
      },
    );
  }
}
