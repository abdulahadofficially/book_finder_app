import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppAlerts {
  AppAlerts._();

  static void showErrorMessage([String? errorMessage, String? title]) {
    _showSnackBar(
      tite: title ?? 'Error',
      message: errorMessage ?? "Something went wrong",
      backgroundColor: Colors.red,
    );
  }

  static void showInfoMessage(String message, String? title) {
    _showSnackBar(
      tite: title ?? 'Alert',
      message: message,
      backgroundColor: Colors.blue,
    );
  }

  static void showSuccessMessage(String? message, String? title) {
    _showSnackBar(
      message: message ?? 'Success',
      tite: title ?? '',
      backgroundColor: Colors.green,
    );
  }

  static void _showSnackBar(
      {required String message,
      required Color backgroundColor,
      required String tite}) {
    Get.snackbar(
      tite,
      message,
      backgroundColor: backgroundColor,
      colorText: Colors.white,
      snackPosition: SnackPosition.TOP,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      borderRadius: 10,
      duration: const Duration(seconds: 1),
      snackStyle: SnackStyle.FLOATING,
      isDismissible: true,
      animationDuration: const Duration(seconds: 1),
    );
  }
}
