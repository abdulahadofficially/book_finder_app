import 'dart:convert';
import 'package:book_finder/data/models/response_model/book_response_model.dart';
import '../../core/constant/api_constant.dart';
import '../../data/api/server.dart';

class BookRepository {
  Future<BookResponseModel> getBooks({String? query}) async {
    try {
      String url = ApiConstant.getBook;
      url += '?q=${query?.isNotEmpty == true ? query : '""'}';
      final response = await Server.get(url);
      final data = BookResponseModel.fromJson(jsonDecode(response.body));
      return data;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
