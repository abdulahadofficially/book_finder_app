import 'package:book_finder/data/models/book_offline_model/book_offline_model.dart';
import 'package:book_finder/presentation/controllers/book_controller.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../core/service/db_service.dart';

class BookCard extends StatelessWidget {
  final BookController bookController;
  final String title;
  final String author;
  final String imageUrl;
  final String id;

  const BookCard({
    super.key,
    required this.bookController,
    required this.title,
    required this.author,
    required this.imageUrl,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(title),
        subtitle: Text(author),
        leading: CachedNetworkImage(
          imageUrl: imageUrl,
          width: 60,
          height: 50,
        ),
        trailing: IconButton(
          icon: const Icon(
            Icons.favorite_border,
            color: Colors.red,
          ),
          onPressed: () {
            bookController.setFavourite(
                book: BookOfflineModel(
                    id: id, title: title, author: author, imageUrl: imageUrl));
          },
        ),
      ),
    );
  }
}
