
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:git_brunch_demo_application/models/post.dart';
import 'package:git_brunch_demo_application/services/get_services.dart';

class HomePageController extends GetxController{

  var postList = List<Post>.empty(growable: true).obs;

  @override
  void onInit() {
    getPostList();
    super.onInit();
  }

  void getPostList(){
    GetServices().getPostList().then((list) {
      postList.clear();
      postList.addAll(list);
    });
  }

}