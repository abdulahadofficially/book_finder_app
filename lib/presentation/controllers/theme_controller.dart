import 'package:book_finder/core/service/shared_pref_service.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  RxBool isDark = false.obs;

  @override
  void onInit() {
    super.onInit();
    getThemeFromPrefs();
  }

  void toggleTheme(bool value) async {
    isDark.value = value;
    AppPref.setTheme(isDark.value);
  }

  void getThemeFromPrefs() async {
    isDark.value = await AppPref.getTheme();
  }
}
