import 'dart:developer';

import 'package:book_finder/data/models/response_model/book_response_model.dart';
import 'package:book_finder/domain/repositories/book_repository.dart';
import 'package:book_finder/utils/app_alerts.dart';
import 'package:get/get.dart';

import '../../core/service/db_service.dart';
import '../../data/models/book_offline_model/book_offline_model.dart';

class BookController extends GetxController {
  final BookRepository _bookRepository = BookRepository();
  RxBool isLoading = false.obs;
  final books = BookResponseModel().obs;
  RxList<BookOfflineModel> favouriteBooks = <BookOfflineModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchBooks();
  }

  Future<void> fetchBooks({String? query}) async {
    try {
      isLoading.value = true;
      final bookData = await _bookRepository.getBooks(query: query);
      books.value = bookData;
    } catch (e) {
      AppAlerts.showErrorMessage(e.toString());
      isLoading.value = false;
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> setFavourite({required BookOfflineModel book}) async {
    await DatabaseHelper().addBook(book);
    fetchFavouriteBooks();
  }

  void fetchFavouriteBooks() async {
    List<BookOfflineModel> books = await DatabaseHelper().getBooks();
    favouriteBooks.assignAll(books);
  }
}
