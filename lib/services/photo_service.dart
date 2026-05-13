import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/photo_model.dart';

class PhotoService {
  static Future<List<PhotoModel>> getPhotos() async {
    final response = await http.get(
      Uri.parse('https://picsum.photos/v2/list?page=1&limit=10')
    );

    if (response.statusCode == 200) {
      List data = json.decode(response.body);
      return data.map((e) => PhotoModel.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load photos');
    }
  }
}