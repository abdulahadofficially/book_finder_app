import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../presentation/controllers/book_controller.dart';
import '../widgets/book_card.dart';

class FavouriteScreen extends StatelessWidget {
  FavouriteScreen({super.key});

  final bookController = Get.put(BookController());

  @override
  Widget build(BuildContext context) {
    bookController.fetchFavouriteBooks();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favourite Books"),
        centerTitle: true,
      ),
      body: Obx(
        () => bookController.favouriteBooks.isEmpty
            ? const Center(child: Text("No Favourite Books Found"))
            : ListView.builder(
                itemCount: bookController.favouriteBooks.length,
                itemBuilder: (context, index) {
                  final book = bookController.favouriteBooks[index];
                  return BookCard(
                    bookController: bookController,
                    title: book.title,
                    author: book.author,
                    imageUrl: book.imageUrl,
                    id: book.id,
                  );
                },
              ),
      ),
    );
  }
}
