import 'package:book_finder/presentation/controllers/book_controller.dart';
import 'package:book_finder/presentation/controllers/theme_controller.dart';
import 'package:book_finder/presentation/widgets/app_loader.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/app_search_field.dart';
import '../widgets/book_card.dart';
import 'favorites_screen.dart';

class BookListScreen extends GetView<BookController> {
  const BookListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeController = Get.find<ThemeController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Books List"),
        centerTitle: true,
        actions: [
          Obx(
            () => Row(
              children: [
                Icon(
                  themeController.isDark.value
                      ? Icons.dark_mode
                      : Icons.light_mode,
                  color: themeController.isDark.value
                      ? Colors.white
                      : Colors.black,
                ),
                Switch(
                  value: themeController.isDark.value,
                  onChanged: themeController.toggleTheme,
                  activeColor: themeController.isDark.value
                      ? Colors.white
                      : Colors.black,
                  inactiveTrackColor: themeController.isDark.value
                      ? Colors.yellow
                      : Colors.white,
                ),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(FavouriteScreen());
        },
        backgroundColor: Colors.black,
        child: const Icon(
          Icons.favorite,
          color: Colors.red,
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: AppTextField(onChanged: (String? value) {
              controller.fetchBooks(query: value);
            }),
          ),
          Obx(() {
            if (controller.isLoading.value) {
              return Expanded(
                child: Center(
                  child: AppLoader(
                      color: Theme.of(context).brightness == Brightness.light
                          ? Colors.black
                          : Colors.white),
                ),
              );
            } else if (controller.books.value.totalItems == 0 ||
                controller.books.value.totalItems == null) {
              return const Expanded(
                child: Center(
                  child: Text("No Books Found"),
                ),
              );
            } else {
              return Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.all(3),
                  itemCount: controller.books.value.items?.length ?? 0,
                  itemBuilder: (context, index) {
                    final book =
                        controller.books.value.items?[index].volumeInfo;
                    return BookCard(
                      bookController: controller,
                      title: book?.title ?? "Unknown Title",
                      author: book?.authors?.first ?? "Unknown Author",
                      imageUrl: book?.imageLinks?.thumbnail ??
                          "https://fakeimg.pl/600x400/f0f0f0/909090?text=No+Image",
                      id: '${controller.books.value.items?[index].id}',
                    );
                  },
                ),
              );
            }
          }),
        ],
      ),
    );
  }
}
