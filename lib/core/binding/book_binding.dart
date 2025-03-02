import 'package:book_finder/presentation/controllers/theme_controller.dart';
import 'package:get/get.dart';

import '../../presentation/controllers/book_controller.dart';

class BookBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BookController());
    Get.lazyPut(() => ThemeController());
  }
}
