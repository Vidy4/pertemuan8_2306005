class PhotoModel {
  String id;
  String author;
  String downloadUrl;
  int width;
  int height;

  PhotoModel({
    required this.id,
    required this.author,
    required this.downloadUrl,
    required this.width,
    required this.height,
  });

  factory PhotoModel.fromJson(Map<String, dynamic> json) {
    return PhotoModel(
      id: json['id'],
      author: json['author'],
      downloadUrl: json['download_url'],
      width: json['width'],
      height: json['height'],
    );
  }
}