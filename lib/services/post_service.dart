import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/post_model.dart';


// class service
class PostService {
  // membuat static method
  static Future<List<PostModel>> getPosts() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

    if (response.statusCode == 200) {
      List data = json.decode(response.body);
      return data.map((e) => PostModel.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load posts');
    }
  }
}