import 'package:flutter/material.dart';
import '../models/post_model.dart';
import '../services/post_service.dart';

class PostProvider extends ChangeNotifier {
  List<PostModel> posts = [];
  bool isLoading = false;
  String errorMessage = '';

  Future<void> fetchPosts() async {
    try {
      isLoading = true;
      notifyListeners();

      posts = await PostService.getPosts();
    } catch (e) {
      errorMessage = e.toString();
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
  Future<void> getPosts() async {
    await fetchPosts();
  }
}
