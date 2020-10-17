import 'package:codingtalk38_provider_bloc/model/res_post.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

import 'package:http/http.dart';

class PostProvider extends ChangeNotifier{

  List<ResPost> listPost = [];
  bool loading = false;

  //menjalankan method post
  PostProvider.initPost(){
    getPosts();
  }

  Future<void> getPosts() async{
    var url  = 'https://jsonplaceholder.typicode.com/posts';
    Response response = await http.get(url);
    listPost = resPostFromJson(response.body);
    loading = false;
    notifyListeners();//memberitahu kalau ada perubahan setelah get data
  }


}