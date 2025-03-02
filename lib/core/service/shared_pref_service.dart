import 'package:book_finder/core/constant/pref_constant.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppPref {
  AppPref._();

  static late SharedPreferences pref;

  static initPref() async {
    pref = await SharedPreferences.getInstance();
  }


  static Future<void> setTheme(bool isDark) async {
    await pref.setBool(PrefConstant.theme, isDark);
  }

  static Future<bool> getTheme() async {
    return pref.getBool(PrefConstant.theme) ?? false;
  }
}
