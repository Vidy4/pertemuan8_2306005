class PhotoModel {
  String id;  // ← ubah dari 'int' menjadi 'String'
  String author;
  String url;
  String downloadUrl;

  PhotoModel({
    required this.id,
    required this.author,
    required this.url,
    required this.downloadUrl,
  });

  factory PhotoModel.fromJson(Map<String, dynamic> json) {
    return PhotoModel(
      id: json['id'],       // API mengembalikan id sebagai String
      author: json['author'],
      url: json['url'],
      downloadUrl: json['download_url'],
    );
  }
}