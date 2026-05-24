import 'package:flutter/material.dart';
import '../models/photo_model.dart';
import '../services/photo_service.dart';

class PhotoProvider extends ChangeNotifier {
  List<PhotoModel> photos = [];
  bool isLoading = false;
  String errorMessage = '';

  Future<void> fetchPhotos() async {
    try {
      isLoading = true;
      notifyListeners();

      photos = await PhotoService.getPhotos();
    } catch (e) {
      errorMessage = e.toString();
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
  Future<void> getPhotos() async {
    await fetchPhotos();
  }
}