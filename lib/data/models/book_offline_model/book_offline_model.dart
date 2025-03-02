class BookOfflineModel {
  String id;
  String title;
  String author;
  String imageUrl;
  int isFavourite;

  BookOfflineModel({
    required this.id,
    required this.title,
    required this.author,
    required this.imageUrl,
    this.isFavourite = 0,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'author': author,
      'imageUrl': imageUrl,
      'isFavourite': isFavourite == 1 ? 1 : 0,
    };
  }

  factory BookOfflineModel.fromMap(Map<String, dynamic> map) {
    return BookOfflineModel(
      id: map['id'],
      title: map['title'],
      author: map['author'],
      imageUrl: map['imageUrl'],
      isFavourite: map['isFavourite'] == 0 ? 0 : 1,
    );
  }
}
