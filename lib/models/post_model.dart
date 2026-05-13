class PostModel {
  int id;
  String title;
  String body;

//constructor
  PostModel({required this.id, required this.title, required this.body});

//factory method
  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}