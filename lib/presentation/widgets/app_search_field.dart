import 'package:flutter/material.dart';


class AppTextField extends StatelessWidget {
  final double? height;
  final BorderRadius? borderRadius;
  final Border? border;
  final double? cursorHeight;
  final TextStyle? textStyle;
  final String? hintText;
  final TextStyle? hintStyle;
  final EdgeInsets? contentPadding;
  final TextEditingController? controller;
final void Function(String)? onChanged;
  const AppTextField({
    super.key,
    this.height,
    this.borderRadius,
    this.border,
    this.cursorHeight,
    this.textStyle,
    this.hintText,
    this.hintStyle,
    this.contentPadding, this.controller, this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 45.0,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: borderRadius ?? BorderRadius.circular(7),
        border: border ?? Border.all(color: Colors.grey.shade200),
      ),
      child: TextFormField(
        controller: controller,
        cursorHeight: cursorHeight ?? 18.0,
        style: const TextStyle( fontSize: 12, color: Colors.grey),
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.search_rounded),
          hintText: hintText ?? 'Search Books...',
          hintStyle: const TextStyle( fontSize: 12, color: Colors.grey),
          contentPadding: contentPadding ?? const EdgeInsets.fromLTRB(10, 8, 0, 5),
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
      onChanged: onChanged,
      ),
    );
  }
}
