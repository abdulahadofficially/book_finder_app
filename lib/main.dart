import 'package:book_finder/core/binding/book_binding.dart';
import 'package:book_finder/core/service/shared_pref_service.dart';
import 'package:book_finder/core/theme/app_theme.dart';
import 'package:book_finder/presentation/controllers/theme_controller.dart';
import 'package:book_finder/presentation/screens/book_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppPref.initPref();
  final theme = await AppPref.getTheme();
  runApp(MyApp(isDark: theme));
}

class MyApp extends StatelessWidget {
  final bool isDark;
  const MyApp({super.key, required this.isDark});

  @override
  Widget build(BuildContext context) {
     final themeController = Get.isRegistered<ThemeController>()
        ? Get.find<ThemeController>()
        : Get.put(ThemeController(), permanent: true);

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
    );

    return Obx(
      () =>  GetMaterialApp(
        title: 'Go Actions',
        debugShowCheckedModeBanner: false,
        initialBinding: BookBinding(),
        theme: AppTheme.getTheme(themeController.isDark.value),
        home: const BookListScreen(),
      ),
    );
  }
}
