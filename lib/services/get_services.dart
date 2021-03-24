import 'dart:convert';

import 'package:git_brunch_demo_application/models/post.dart';
import 'package:http/http.dart' as http;

class GetServices{

  final _baseUrl = 'https://jsonplaceholder.typicode.com';

  Future<List<Post>> getPostList() async {
    List<Post> postsList = [];

    String url = _baseUrl + '/posts';

    final response = await http.get(url);
    int code = response.statusCode;

    if(code == 200){
      var jsonList = jsonDecode(response.body);
      for(var jsonPost in jsonList){
        postsList.add(Post.fromJson(jsonPost));
      }
      print('$postsList');
      return postsList;
    }else{
      return [];
    }

  }

}